defmodule GlobalToolsTest do
  use ExUnit.Case
  doctest GlobalTools

  test "greets the world" do
    assert GlobalTools.hello() == :world
  end
end
