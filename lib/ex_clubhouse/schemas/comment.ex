defmodule ExClubhouse.Schemas.Comment do
  use ExClubhouse.Schema

  embedded_schema do
    field :author_id, :string
    field :created_at, :utc_datetime
    field :entity_type, :string
    field :external_id, :string
    field :mention_ids, {:array, :string}
    field :position, :integer
    field :story_id, :integer
    field :text, :string
  end

  def all_fields do
    __schema__(:fields)
    |> List.myers_difference(embeds())
    |> Keyword.get(:del)
  end
end
