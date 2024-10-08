# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.ExtractAuthors200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :authors
  ]

  @type t :: %__MODULE__{
    :authors => [APILeague.Model.ExtractAuthors200ResponseAuthorsInner.t] | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:authors, :list, APILeague.Model.ExtractAuthors200ResponseAuthorsInner)
  end
end

