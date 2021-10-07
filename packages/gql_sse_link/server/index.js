import { GraphQLSchema, GraphQLObjectType, GraphQLString } from 'graphql';
import fs from 'fs';
import http2 from 'http2';
import { createHandler } from 'graphql-sse';
/**
 * Construct a GraphQL schema and define the necessary resolvers.
 *
 * type Query {
 *   hello: String
 * }
 * type Subscription {
 *   greetings: String
 * }
 */
const schema = new GraphQLSchema({
  query: new GraphQLObjectType({
    name: 'Query',
    fields: {
      hello: {
        type: GraphQLString,
        resolve: () => 'world',
      },
    },
  }),
  subscription: new GraphQLObjectType({
    name: 'Subscription',
    fields: {
      greetings: {
        type: GraphQLString,
        subscribe: async function* () {
          for (const hi of ['Hi', 'Bonjour', 'Hola', 'Ciao', 'Zdravo']) {
            yield { greetings: hi };
          }
        },
      },
    },
  }),
});



// Create the GraphQL over SSE handler
const handler = createHandler({
  schema, // from the previous step
});

// Create a HTTP/2 server using the handler on `/graphql/stream`
const server = http2.createSecureServer(
    {
      key: fs.readFileSync('localhost-privkey.pem'),
      cert: fs.readFileSync('localhost-cert.pem'),
    },
    (req, res) => {
      console.log(req);
      if (req.url.startsWith('/graphql/stream')) return handler(req, res);
      return res.writeHead(404).end();
    },
);

server.listen(4000);
console.log('Listening to port 4000');