defmodule ExClubhouse.API do
  alias ExClubhouse.API.V2.{
    Projects,
    Stories,
    Members,
    Teams
  }

  @doc """
  Fetch all projects of authenticated user.
  """
  defdelegate projects(), to: Projects

  @doc """
  Fetch project by id.
  """
  defdelegate project(id), to: Projects

  @doc """
  Fetch all stories in a project.
  """
  defdelegate stories(project_id), to: Stories

  @doc """
  Fetch all of the teams in an organization.
  """
  defdelegate teams(), to: Teams

  @doc """
  Fetch a team by id
  """
  defdelegate team(id), to: Teams

  @doc """
  Fetch all of the members in an organization.
  """
  defdelegate members(), to: Members

  @doc """
  Fetch a member by id
  """
  defdelegate member(id), to: Members
end
