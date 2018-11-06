defmodule BunqApi.Repo do
  use Ecto.Repo,
    otp_app: :bunq_api,
    adapter: Ecto.Adapters.Postgres
end
