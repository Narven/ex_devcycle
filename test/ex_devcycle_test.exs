defmodule ExDevCycleTest do
  use ExUnit.Case
  doctest ExDevCycle

  test "gets a feature flag" do
    assert ExDevCycle.is_enabled?("any-flag") == nil
  end
end
