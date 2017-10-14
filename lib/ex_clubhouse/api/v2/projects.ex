defmodule ExClubhouse.API.V2.Projects do
  alias ExClubhouse.API.V2.Client

  def projects do
    Client.get!("/projects")
  end
end
