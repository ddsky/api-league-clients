# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.StemTextApi200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :original,
    :stemmed
  ]

  @type t :: %__MODULE__{
    :original => String.t | nil,
    :stemmed => String.t | nil
  }

  def decode(value) do
    value
  end
end

