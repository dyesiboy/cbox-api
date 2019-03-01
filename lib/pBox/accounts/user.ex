defmodule PBox.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset


  schema "users" do
    field :email, :string
    field :password_hash, :string
    field :username, :string

    timestamps()
  end

  @doc false
  def changeset(user, params \\ %{}) do
    user
    |> cast(params, [:username, :email, :password_hash])
    |> validate_required([:username, :email, :password_hash])
    |> unique_constraint(:username)
    |> unique_constraint(:email)
  end
end
