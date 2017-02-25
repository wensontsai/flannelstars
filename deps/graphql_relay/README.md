# GraphQL.Relay

This library contains helper functions that make it easier to setup a Relay compatible GraphQL schema.

You do not need this library to create a Relay compatible GraphQL schema, it just makes it easier. To illustrate this point here's what a Relay compatible schema looks like <a href="https://github.com/graphql-elixir/graphql_relay/blob/master/test/support/star_wars/schema_without_library.exs">when you don't use this library</a> and <a href="https://github.com/graphql-elixir/graphql_relay/blob/master/test/support/star_wars/schema.exs">when you do use it</a>.

This library relies on Elixir's <a href="https://github.com/graphql-elixir/graphql">graphql</a> library.

## Learning GraphQL and Relay

It's important that you understand GraphQL first and then Relay second. Relay is simply a convention for how to organize a GraphQL schema so that Relay clients can query the GraphQL server in a standard way.

* <a href="https://facebook.github.io/react/blog/2015/05/01/graphql-introduction.html">GraphQL Introduction</a>
* <a href="https://code.facebook.com/posts/1691455094417024/graphql-a-data-query-language/">GraphQL: A data query language</a>
* <a href="https://medium.com/@clayallsopp/your-first-graphql-server-3c766ab4f0a2#.m78ybemas">Your First GraphQL Server</a>
* <a href="https://learngraphql.com/">Learn GraphQL</a>
* <a href="https://facebook.github.io/graphql/">GraphQL Specification</a>
* <a href="https://facebook.github.io/relay/">Relay</a>
* <a href="https://code-cartoons.com/a-cartoon-intro-to-facebook-s-relay-part-1-3ec1a127bca5#.7kaxn4akk">A Cartoon Guide To Facebook's Relay</a>

## Installation

  1. Add graphql_relay to your list of dependencies in `mix.exs`:

        def deps do
          [{:graphql_relay, "~> 0.0.17"}]
        end

## Configuration

Relay's Babel Plugin (<a href="https://facebook.github.io/relay/docs/guides-babel-plugin.html">Relay Docs</a>, <a href="https://www.npmjs.com/package/babel-relay-plugin">npm</a>) and babel-relay-plugin-loader (<a href="https://www.npmjs.com/package/babel-relay-plugin-loader">npm</a>, <a href="https://github.com/BerndWessels/babel-relay-plugin-loader">GitHub</a>) rely on a `schema.json` file existing that contains the result of running the full GraphQL introspection query against your GraphQL endpoint. Babel needs this file for transpiling GraphQL queries for use with Relay.

In other words, Relay requires a `schema.json` file which is generated server-side, so we need a way of creating and updating this file.

We need to set two configuration values which you can do in the `config/config.exs` for the project you're using this library in.

```elixir
config :graphql_relay,
  schema_module: GraphQL.Schema.Root, # Module that includes a `schema` function that returns your GraphQL schema
  schema_json_path: "#{Path.dirname(__DIR__)}/priv/repo/graphql" # Will create a `schema.json` file in this directory
```

With this configuration set you can now run the `GraphQL.Relay.generate_schema_json!` function from your project's root directory: `mix run -e GraphQL.Relay.generate_schema_json!`

If you're using this library in a Phoenix project you can <a href="https://github.com/graphql-elixir/graphql_relay/wiki/Setup-Phoenix-app-to-reload-schema.json-file-whenever-GraphQL-schema-files-change">set up your Phoenix dev environment to run this automatically after each modification to a GraphQL related schema file</a>.

## Usage

See the <a href="https://github.com/graphql-elixir/graphql_relay/blob/master/test/support/star_wars/schema.exs">Star Wars test schema</a> for a simple example and the <a href="https://github.com/graphql-elixir/graphql_relay/blob/master/examples/todo">TodoMVC example Phoenix application</a> for a full application example that uses Ecto as well.

* <a href="https://github.com/graphql-elixir/graphql/wiki/How-to-do-authentication-and-authorization-in-a-Phoenix-application-with-GraphQL">How to do authentication and authorization in a Phoenix application with GraphQL</a>

## Helpful Tools

* <a href="https://github.com/facebook/react-devtools">React [and Relay] Developer Tools</a> for Chrome and Firefox.
