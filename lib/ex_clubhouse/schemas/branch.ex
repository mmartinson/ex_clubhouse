defmodule ExClubhouse.Schemas.Branch do
  use ExClubhouse.Schema

  alias ExClubhouse.Schemas.PullRequest

  embedded_schema do
    field :created_at, :utc_datetime
    field :deleted, :boolean
    field :entity_type, :string
    field :merged_branch_ids, {:array, :integer}
    field :name, :string
    field :persistent, :boolean
    field :repository_id, :integer
    field :updated_at, :utc_datetime
    field :url, :string

    embeds_many :pull_requests, PullRequest
  end
end
