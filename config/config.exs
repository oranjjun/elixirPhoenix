# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hello,
  ecto_repos: [Hello.Repo]

# Configures the endpoint
config :hello, HelloWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "nPLQY7DcOV4IAC7I+C/F9vTAKNRmkWJFdVAVg1r5LNRRu/Ue5Kzep5QTP8+HLSkK",
  render_errors: [view: HelloWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hello.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Facebook config tokens
config :facebook_messenger,
  facebook_page_token: System.get_env("FB_PAGE_ACCESS_KEY"),
  challenge_verification_token: System.get_env("FB_VERIFICATION_TOKEN")
  # facebook_page_token: "EAAKpDyl5QvwBAHZA9kZCNG7R6V2DlZAsFpeZATruFzJQFy0JE0K2UZB2bTX9hrPl1KKnSoytzeiRKckp2XU85fOh40PQ4RZBiM6yldskpK4ZCB9Ny1u5i2CxW2kAdXUQh0EpFzKQKamT4hxB2vyT2M3CNUuTBH5moDXcgHxRaTrJAZDZD",
  # challenge_verification_token: "P31xDdauUUIbjVPq5wli/00c5kYw58ioEnRD6AQyZghUqjiQ+IqlMdLZK4yZUQxh"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
