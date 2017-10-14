defmodule ExClubhouse.API do
  alias ExClubhouse.API.V2.{
    Projects,
    Stories,
  }

  @doc """
  Fetch all projects of authenticated user.
  """
  defdelegate projects, to: Projects

  @doc """
  Fetch all stories in a project.
  """
  defdelegate stories(project_id), to: Stories
end
