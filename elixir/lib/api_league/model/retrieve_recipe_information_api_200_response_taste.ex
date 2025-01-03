# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.RetrieveRecipeInformationApi200ResponseTaste do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :fattiness,
    :spiciness,
    :saltiness,
    :bitterness,
    :savoriness,
    :sweetness,
    :sourness
  ]

  @type t :: %__MODULE__{
    :fattiness => float() | nil,
    :spiciness => integer() | nil,
    :saltiness => integer() | nil,
    :bitterness => float() | nil,
    :savoriness => float() | nil,
    :sweetness => float() | nil,
    :sourness => float() | nil
  }

  def decode(value) do
    value
  end
end

