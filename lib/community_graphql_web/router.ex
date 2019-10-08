defmodule CommunityGraphqlWeb.Router do
  use CommunityGraphqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", CommunityGraphqlWeb do
    pipe_through :api
  end
end
