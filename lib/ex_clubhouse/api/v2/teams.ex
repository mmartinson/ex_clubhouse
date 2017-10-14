defmodule ExClubhouse.API.V2.Teams do
  alias ExClubhouse.API.V2.Client
  alias ExClubhouse.Mapper
  alias ExClubhouse.Schemas.Team

  def teams do
    case Client.get!("/teams") do
      %{status_code: 200, body: body} ->
        {:ok, Mapper.map(body, Team)}

      res ->
        {:error, res}
    end
  end

  def team(id) do
    case Client.get!("/teams/#{id}") do
      %{status_code: 200, body: body} ->
        {:ok, Mapper.map(body, Team)}

      res ->
        {:error, res}
    end
  end
end
