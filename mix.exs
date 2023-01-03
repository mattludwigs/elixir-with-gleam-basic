defmodule WithGleam.MixProject do
  use Mix.Project

  @app :with_gleam

  def project do
    [
      app: @app,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      compilers: [:gleam | Mix.compilers()],
      archives: [mix_gleam: "~> 0.6.1"],
      aliases: [
        "deps.get": ["deps.get", "gleam.deps.get"]
      ],
      erlc_paths: [
        "build/dev/erlang/#{@app}/_gleam_artefacts",
        # For Gleam < v0.25.0
        "build/dev/erlang/#{@app}/build"
      ],
      erlc_include_path: "build/dev/erlang/#{@app}/include"
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
      {:gleam_stdlib, "~> 0.25"},
      {:gleeunit, "~> 0.7", only: [:dev, :test], runtime: false}
    ]
  end
end
