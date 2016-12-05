use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :conmailman, Conmailman.Endpoint,
  secret_key_base: "eT1ws2yvQu9FyZUWzDYnogReToA12+RH7+a76Oau1Ctfd8l56w1VTo0JmSgG4mIr"

# Configure your database
config :conmailman, Conmailman.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "conmailman_prod",
  pool_size: 20
