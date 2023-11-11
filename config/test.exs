import Config

config :pescarte, ecto_repos: [Pescarte.Database.Repo]

database = System.get_env("PG_DATABASE", "peapescarte")
db_user = System.get_env("DATABASE_USER", "peapescarte")
db_pass = System.get_env("DATABASE_PASSWORD", "peapescarte")
# docker-compose service
hostname = System.get_env("DATABASE_HOST", "localhost")

database_opts = [
  username: db_user,
  password: db_pass,
  hostname: hostname,
  database: "peapescarte_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10
]

config :pescarte, Pescarte.Database.Repo, database_opts

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :pescarte, PescarteWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "bCQ+FSLb9dhw6zg5bmUdKpINI8n7gjfzV84iFV9bLS9xd3rMIG20f5vXkkwbunnG",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Only in tests, remove the complexity from the password hashing algorithm
config :bcrypt_elixir, :log_rounds, 1
