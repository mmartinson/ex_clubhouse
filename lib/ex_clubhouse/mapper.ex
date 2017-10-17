defmodule ExClubhouse.Mapper do
  @moduledoc """
  Maps API responses into Ecto embedded schema structs.
  """

  def map(data, schema) when is_list(data) do
    for entity <- data, do: map(entity, schema)
  end

  def map(data, schema) when is_map(data) do
    schema.mapping_changeset(struct(schema), data)
    |> Ecto.Changeset.apply_changes
  end
end
