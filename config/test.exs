use Mix.Config

# Configure your database
config :community_graphql, CommunityGraphql.Repo,
  username: "ogudah",
  password: "password",
  database: "community_graphql_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :community_graphql, CommunityGraphqlWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
