defmodule ExClubhouse.Schemas.Story do
  use ExClubhouse.Schema

  alias ExClubhouse.Schemas.{
    Branch,
    Comment,
    Commit,
    File,
    Label,
    StoryLink,
    Task,
  }

  embedded_schema do
    field :archived, :boolean
    field :blocked, :boolean
    field :blocker, :boolean
    field :completed, :boolean
    field :completed_at, :utc_datetime
    field :completed_at_override, :utc_datetime
    field :created_at, :utc_datetime
    field :deadline, :utc_datetime
    field :description, :string
    field :entity_type, :string
    field :epic_id, :integer
    field :estimate, :integer
    field :external_id, :string
    field :follower_ids, {:array, :string}
    field :moved_at, :utc_datetime
    field :name, :string
    field :owner_ids, {:array, :string}
    field :position, :integer
    field :project_id, :integer
    field :requested_by_id, :string
    field :started, :boolean
    field :started_at, :utc_datetime
    field :started_at_override, :utc_datetime
    field :story_type, :string
    field :workflow_state_id, :integer
    field :updated_at, :utc_datetime

    # embeds_many :branches, Branch
    embeds_many :comments, Comment
    # embeds_many :commits, Commit
    # embeds_many :files, File
    # embeds_many :lables, Label
    # embeds_many :linked_files, File
    # embeds_many :story_links, StoryLink
    # embeds_many :tasks, Task
  end
end
