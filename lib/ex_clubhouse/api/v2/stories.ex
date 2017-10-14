defmodule ExClubhouse.API.V2.Stories do
  alias ExClubhouse.API.V2.Client

  def stories(project_id) do
    Client.get!("/projects/#{project_id}/stories")
  end
end
