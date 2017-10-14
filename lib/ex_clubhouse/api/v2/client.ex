defmodule ExClubhouse.API.V2.Client do
  use HTTPoison.Base

  @base_url "https://api.clubhouse.io/api/v2"

  def process_url(query_uri) do
    @base_url <> query_uri <> "?token=#{token()}"
  end

  def process_response_body(body) do
    Poison.decode!(body)
  end

  def process_request_body(body) do
    Poison.encode!(body)
  end

  defp token do
    System.get_env("CLUBHOUSE_API_TOKEN")
  end
end
