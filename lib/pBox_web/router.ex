defmodule PBoxWeb.Router do
  use PBoxWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PBoxWeb do
    pipe_through :api
  end
end
