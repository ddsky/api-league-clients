# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.ExtractEntities200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :entities
  ]

  @type t :: %__MODULE__{
    :entities => [APILeague.Model.ExtractEntities200ResponseEntitiesInner.t] | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:entities, :list, APILeague.Model.ExtractEntities200ResponseEntitiesInner)
  end
end
