defmodule ExClubhouse.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ex_clubhouse,
      version: "0.1.0",
      elixir: "~> 1.5",
      description: description(),
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: package(),
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    """
    A client library for the clubhouse.io v2 REST and webhook APIs.
    """
  end

  defp package() do
    [
      maintainers: ["Mike Martinson", "Zac Holden"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mmartinson/ex_clubhouse"}
    ]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:httpoison, "~> 0.13.0"},
      {:poison, "~> 3.1.0"},
    ]
  end
end
