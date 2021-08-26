defmodule Liveopex.Repo do
  use Ecto.Repo,
    otp_app: :liveopex,
    adapter: Ecto.Adapters.Postgres
end
