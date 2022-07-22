defmodule WORLD.Mixfile do
  use Mix.Project

  def application(),
    do: [
      mod: {:world, []},
      applications: [:rocksdb, :kvs],
      extra_applications: [:logger]
    ]

  def deps() do
    [
      {:ex_doc, "~> 0.19", only: :dev, override: true},
      {:rocksdb, "~> 1.6.0"},
      {:jsone, "~> 1.5.1"},
      {:kvs, "~> 9.7.0"}
    ]
  end

  def project() do
    [
      app: :world,
      version: "0.7.22",
      description: "WORLD Countries for ERP.UNO",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(priv src mix.exs LICENSE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      links: %{"GitHub" => "https://github.com/erpuno/world"}
    ]
  end
end
