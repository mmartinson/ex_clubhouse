defmodule ExClubhouse.API.V2.Members do
  alias ExClubhouse.API.V2.Client
  alias ExClubhouse.Mapper
  alias ExClubhouse.Schemas.Member

  def members do
    case Client.get!("/member") do
      %{status_code: 200, body: body} ->
        {:ok, Mapper.map(body, Member)}

      res ->
        {:error, res}
    end
  end

  def member(id) do
    case Client.get!("/members/#{id}") do
      %{status_code: 200, body: body} ->
        {:ok, Mapper.map(body, Member)}

      res ->
        {:error, res}
    end
  end
end
