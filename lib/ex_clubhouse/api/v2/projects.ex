defmodule ExClubhouse.API.V2.Projects do
  alias ExClubhouse.API.V2.Client
  alias ExClubhouse.Mapper
  alias ExClubhouse.Schemas.Project

  # TODO: This error handling can be generalized into a response handler.
  # Add custom error struct to wrap error response.
  # Handle network error using get/1 instead of get!/1

  def projects do
    case Client.get!("/projects") do
      %{status_code: 200, body: body} ->
        {:ok, Mapper.map(body, Project)}

      res ->
        {:error, res}
    end
  end

  def project(%Project{id: id}), do: project(id)

  def project(id) do
    case Client.get!("/projects/#{id}") do
      %{status_code: 200, body: body} ->
        {:ok, Mapper.map(body, Project)}

      res ->
        {:error, res}
    end
  end
end
