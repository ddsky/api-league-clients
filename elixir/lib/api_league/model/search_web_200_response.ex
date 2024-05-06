# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.SearchWeb200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :results
  ]

  @type t :: %__MODULE__{
    :results => [APILeague.Model.SearchWeb200ResponseResultsInner.t] | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:results, :list, APILeague.Model.SearchWeb200ResponseResultsInner)
  end
end

