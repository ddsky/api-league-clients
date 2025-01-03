# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.SearchMemesApi200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :memes,
    :available
  ]

  @type t :: %__MODULE__{
    :memes => [APILeague.Model.SearchMemesApi200ResponseMemesInner.t] | nil,
    :available => integer() | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:memes, :list, APILeague.Model.SearchMemesApi200ResponseMemesInner)
  end
end

