defmodule ExDevCycle do
  @moduledoc """
  Documentation for `ExDevCycle`.
  """

  use Tesla, only: ~w(get post)a

  plug(Tesla.Middleware.BaseUrl, "https://bucketing-api.devcycle.com/v1")

  plug(Tesla.Middleware.Headers, [
    {"Content-Type", "application/json"},
    {"Authorization", ""}
  ])

  plug(Tesla.Middleware.JSON)

  def get_variable(variable, user_id) do
    post("/variables/" <> variable, %{
      user_id: user_id
    })
  end

  @doc """
  Check is a specific flag is enabled or not

  ## Examples

      iex> ExDevCycle.is_enabled?("feature-flag-name")
      flase

  """
  def is_enabled?(variable, user_id \\ "user_id") do
    case get_variable(variable, user_id) do
      {:ok, response} ->
        response.body["value"]

      _ ->
        false
    end
  end
end
