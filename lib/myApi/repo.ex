defmodule MyApi.Repo do
  use Ecto.Repo,
    otp_app: :myApi,
    adapter: Ecto.Adapters.Postgres
end
