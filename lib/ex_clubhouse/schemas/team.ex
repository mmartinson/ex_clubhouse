defmodule ExClubhouse.Schemas.Team do
  use ExClubhouse.Schema

  embedded_schema do
    field :created_at, :utc_datetime
    field :description, :string
    field :entity_type, :string
    field :name, :string
    field :position, :integer
    field :project_ids, {:array, :integer}
    field :updated_at, :utc_datetime
    field :workflow, :map
  end
end
