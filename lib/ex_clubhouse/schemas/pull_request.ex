defmodule ExClubhouse.Schemas.PullRequest do
  use ExClubhouse.Schema

  embedded_schema do
    field :branch_id, :integer
    field :closed, :boolean
    field :created_at, :utc_datetime
    field :entity_type, :string
    field :num_added, :integer
    field :num_commits, :integer
    field :num_modified, :integer
    field :num_removed, :integer
    field :number, :integer
    field :target_branch_id, :integer
    field :title, :string
    field :updated_at, :utc_datetime
    field :url, :string
  end
end
