# APILeague

API League is a Hub for World Class APIs.

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `apileague` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:apileague, "~> 1.0.0"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/apileague][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :apileague, base_url: "https://api.apileague.com"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`APILeague.Connection.new/1`:

```elixir
client = APILeague.Connection.new(base_url: "https://api.apileague.com")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/apileague
