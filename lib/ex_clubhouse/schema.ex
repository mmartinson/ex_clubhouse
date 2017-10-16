defmodule ExClubhouse.Schema do
  @moduledoc false

  defmacro __using__(_) do
    quote do
      use Ecto.Schema

      @primary_key {:id, :id, autogenerate: false}

      def changeset(struct, data) do
        Ecto.Changeset.cast(struct, data, all_fields())
      end

      defp all_fields do
        __schema__(:fields)
      end
    end
  end
end
