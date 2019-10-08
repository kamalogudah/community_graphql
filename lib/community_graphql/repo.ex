defmodule CommunityGraphql.Repo do
  use Ecto.Repo,
    otp_app: :community_graphql,
    adapter: Ecto.Adapters.Postgres
end
