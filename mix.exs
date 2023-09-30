defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app: :issues,
      version: "0.0.1",
      elixir: "~> 1.14",
      name: "Issues",
      source_url: "https://github.com/anatoliip33/programming-elixir-1-6",
      escript: escript_config(),
      elixirc_options: [
        warnings_as_errors: true
      ],
      start_permanent: Mix.env() == :prod,
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
      {:httpoison, "~> 2.1"},
      {:poison, "~> 5.0"},
      {:hackney, "~> 1.19"},
      { :ex_doc, "~> 0.19.1"},
      { :earmark, "~> 1.2.5"}
    ]
  end

  defp escript_config() do
    [
      main_module: Issues.CLI
    ]
  end
end
