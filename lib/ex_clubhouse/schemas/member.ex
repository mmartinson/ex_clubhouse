defmodule ExClubhouse.Schemas.Member do
  use ExClubhouse.Schema

  embedded_schema do
    field :created_at, :utc_datetime
    field :disabled, :boolean
    field :entity_type, :string
    field :profile, :map
    field :role, :string
    field :updated_at, :utc_datetime
  end
end
