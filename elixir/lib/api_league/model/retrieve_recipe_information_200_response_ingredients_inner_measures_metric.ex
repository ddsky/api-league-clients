# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :unit_short,
    :amount,
    :unit_long
  ]

  @type t :: %__MODULE__{
    :unit_short => String.t | nil,
    :amount => float() | nil,
    :unit_long => String.t | nil
  }

  def decode(value) do
    value
  end
end

