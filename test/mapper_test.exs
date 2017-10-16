defmodule MapperTest do
  use ExUnit.Case, async: true

  alias ExClubhouse.Mapper
  alias ExClubhouse.Schemas.Story

  setup_all do
    [
      read_fixture: fn(file) ->
      "fixture/api_examples/#{file}.json"
      |> File.read!
      |> Poison.decode!
    end
    ]
  end

  test "maps embeds", %{read_fixture: read_fixture} do
    data = read_fixture.("story")
    result = Mapper.map(data, Story)
    assert length(result.branches) == 1
  end
end
