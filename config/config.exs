# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :discuss,
  ecto_repos: [Discuss.Repo]

# Configures the endpoint
config :discuss, Discuss.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "F9f5Q3leaofZ5yJh11MiDMTdio723aZZX/3xYvrp90xnxOgmHdfhi8yIG9pjZ9tX",
  render_errors: [view: Discuss.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Discuss.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :ueberauth, Ueberauth,
providers: [
  github: {Ueberauth.Strategy.Github,[]}
]
config :ueberauth,Ueberauth.Strategy.Github.OAuth,
client_id: "7ffd8aae1acc1b9906cd",
client_secret: "28b4156109b3cb641133d82d892c2dac06df86a4"
