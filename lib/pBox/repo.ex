defmodule PBox.Repo do
  use Ecto.Repo,
    otp_app: :pBox,
    adapter: Ecto.Adapters.Postgres
end
