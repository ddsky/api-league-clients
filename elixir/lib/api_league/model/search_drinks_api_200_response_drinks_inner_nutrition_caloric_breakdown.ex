# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.SearchDrinksApi200ResponseDrinksInnerNutritionCaloricBreakdown do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :percent_fat,
    :percent_carbs,
    :percent_protein
  ]

  @type t :: %__MODULE__{
    :percent_fat => float() | nil,
    :percent_carbs => float() | nil,
    :percent_protein => float() | nil
  }

  def decode(value) do
    value
  end
end

