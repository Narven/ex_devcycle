defmodule ExDevCycle.Config do
  @moduledoc """
  All the configuration for `ExDevCycle` basic functionality is here:any()

  - `api_url`: DevCycle API url. By default is: "https://bucketing-api.devcycle.com/v1"
  - `key`: is the server/client/mobile key
  """

  defstruct [:api_url, :key]
end
