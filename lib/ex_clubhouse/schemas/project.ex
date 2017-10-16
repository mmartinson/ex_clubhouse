defmodule ExClubhouse.Schemas.Project do
  use ExClubhouse.Schema

  embedded_schema do
    field :abbreviation, :string
    field :archived, :boolean
    field :color, :string
    field :created_at, :utc_datetime
    field :days_to_thermometer, :integer
    field :description, :string
    field :entity_type, :string
    field :external_id, :string
    field :follower_ids, {:array, :string}
    field :iteration_length, :integer
    field :name, :string
    field :show_thermometer, :boolean
    field :start_time, :utc_datetime
    field :stats, {:map, :integer}
    field :team_id, :integer
    field :updated_at, :utc_datetime
  end
end
