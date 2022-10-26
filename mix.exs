defmodule ExDevCycle.MixProject do
  use Mix.Project

  defp description do
    """
    ExDevCycle. Tiny library for Elixir to connect with DevCycle. https://devcycle.com.
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Pedro Luz"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/Narven/ex_devcycle"
      }
    ]
  end

  def project do
    [
      app: :ex_devcycle,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tesla, "~> 1.4"},
      {:jason, "~> 1.4", only: [:test], runtime: false}
    ]
  end
end
