# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :community_graphql,
  ecto_repos: [CommunityGraphql.Repo]

# Configures the endpoint
config :community_graphql, CommunityGraphqlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3V4TJjFwAt7iTeYcoHc6iY/mS45av8AH1pZT89o0JEDsLgFXNZ0GMnkw5wGHuhA0",
  render_errors: [view: CommunityGraphqlWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: CommunityGraphql.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
