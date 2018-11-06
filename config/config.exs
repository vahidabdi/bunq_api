# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :bunq_api,
  ecto_repos: [BunqApi.Repo]

# Configures the endpoint
config :bunq_api, BunqApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iU0Ta4HokFF0ByPYcg+QnStDs1BzkW9VSD6LSYq4GLucrELe2imyTVX60mDw5kdf",
  render_errors: [view: BunqApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: BunqApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
