# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.ListWordSynonyms200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :synonyms
  ]

  @type t :: %__MODULE__{
    :synonyms => [String.t] | nil
  }

  def decode(value) do
    value
  end
end
