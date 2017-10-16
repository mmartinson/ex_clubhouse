defmodule ExClubhouse.Schema do
  @moduledoc false

  defmacro __using__(_) do
    quote do
      use Ecto.Schema

      @primary_key {:id, :id, autogenerate: false}

      def mapping_changeset(struct, data) do
        struct
        |> Ecto.Changeset.cast(data, all_fields())
        |> build_embedded()
      end

      def mapping_changeset2(struct, data) do
        IO.inspect data
        IO.inspect Map.keys(struct)
        struct
        |> Ecto.Changeset.cast(data, [:author_id])
        |> build_embedded()
      end

      defp build_embedded(data) do
        Enum.reduce(embeds(), data, fn(embed, acc) ->
          Ecto.Changeset.cast_embed(acc, embed, with: &mapping_changeset2/2) |> IO.inspect
        end)
      end

      def all_fields do
        __schema__(:fields)
        |> List.myers_difference(embeds())
        |> Keyword.get(:del)
      end

      defp embeds do
        __schema__(:embeds)
      end
    end
  end
end
