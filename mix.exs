defmodule Moon.MixProject do
  use Mix.Project

  def project do
    version = version()

    [
      app: :moon,
      version: version,
      elixir: "~> 1.11",
      elixirc_paths: elixirc_paths(Mix.env()),
      compilers: [:gettext] ++ Mix.compilers(),
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ],
      package: package(version),
      # docs
      name: "Bennu",
      source_url: "https://github.com/coingaming/moon/tree/v#{version}",
      homepage_url: "https://github.com/coingaming/moon/tree/v#{version}"
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {Moon.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  defp version do
    case File.read("VERSION") do
      {:ok, version} -> String.trim(version)
      {:error, _} -> "0.0.0-development"
    end
  end

  defp package(version) do
    [
      organization: "coingaming",
      licenses: ["UNLICENSED"],
      files: ["lib", "priv", "mix.exs", "README.md", "VERSION"],
      links: %{
        "GitHub" => "https://github.com/coingaming/moon/tree/v#{version}"
      }
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    deps_override([
      {:phoenix, "~> 1.6"},
      {:phoenix_live_view, "~> 0.17"},
      {:phoenix_html, "~> 3.0"},
      {:phoenix_live_dashboard, "~> 0.6"},
      {:phoenix_ecto, "~> 4.0"},
      {:ecto_sql, "~> 3.1"},
      {:faker, "~> 0.17"},
      {:gettext, "~> 0.18"},
      {:jason, "~> 1.0"},
      {:plug_cowboy, "~> 2.0"},
      {:vega_lite, "~> 0.1.0"},
      {:surface, "~> 0.7"},
      {:timex, "~> 3.6"},
      {:distillery, "~> 2.1"},

      # test
      {:excoveralls, "~> 0.10", only: :test},
      {:floki, ">= 0.27.0", only: :test},
      {:credo, "~> 1.5", only: [:dev, :test], runtime: false},

      # dev
      {:phoenix_live_reload, "~> 1.2", only: :dev},
      {:surface_formatter, "~> 0.7", only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 1.0", only: [:dev, :test], runtime: false},
      {:ex_doc, ">= 0.0.0", only: [:dev, :test], runtime: false}
    ])
  end

  defp deps_override(deps, path \\ ".mix_override.exs") do
    case Path.expand(path) do
      "/.mix_override.exs" ->
        deps

      _ ->
        if File.exists?(path) do
          Code.require_file(path)
          MixOverride.deps(deps)
        else
          deps_override(deps, Path.join("..", path))
        end
    end
  end

  # Aliases are shortcuts or tasks specific to the current project.
  # For example, to install project dependencies and perform other setup tasks, run:
  #
  #     $ mix setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    [
      setup: ["deps.get", "cmd npm install --prefix assets"],
      "assets.setup": ["cmd --cd assets npm i"],
      "assets.clean": ["cmd --cd assets rm -rf node_modules"],
      "assets.deploy": ["cmd --cd assets npm run deploy", "phx.digest"],
      "ensure-quality": [
        "format",
        "surface.format"
      ],
      "check-quality": [
        "format --check-formatted",
        "compile --all-warnings --warnings-as-errors",
        "credo",
        "surface.format --check-formatted"
      ]
    ]
  end
end
