defmodule CommunityGraphqlWeb.Router do
  use CommunityGraphqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end
  
  scope "/" do
    pipe_through :api
    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: CommunityGraphqlWeb.Schema,
      interface: :simple,
      context: %{pubsub: CommunityGraphqlWeb.Endpoint }
  end
end
