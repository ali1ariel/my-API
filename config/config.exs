# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :myApi,
  ecto_repos: [MyApi.Repo]

config :myApi, MyApi.Guardian,
  issuer: "myApi",
  secret_key: "92TANl4j/FM4Rp60R4oOAi5wvBszNDJ+kgkkSJyfnEY7+spl+3qQHiZDeOQLe5vd"

# Configures the endpoint
config :myApi, MyApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "qK5+MGvBoDW3gusuLknGSMyjdE1t8DYGgRbmP5BkwVuNQQCDt8D+GzinSoyrElPb",
  render_errors: [view: MyApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: MyApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
