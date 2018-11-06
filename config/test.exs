use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :bunq_api, BunqApiWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :bunq_api, BunqApi.Repo,
  username: "postgres",
  password: "postgres",
  database: "bunq_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
