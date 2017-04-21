defmodule Bot.Mixfile do
  use Mix.Project

  def project do
    [app: :bot,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :slack, :quantum],
         mod: {Bot, []}]
  end

  defp deps do
    [
      {:slack, "~> 0.11.0"},
      {:quantum, "~> 1.9"}
    ]
  end
end
