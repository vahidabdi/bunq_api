defmodule BunqApiWeb.Router do
  use BunqApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BunqApiWeb do
    pipe_through :api
  end
end
