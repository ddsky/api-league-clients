# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.SearchDrinksApi200ResponseDrinksInnerNutritionIngredientBreakdownInnerNutrientsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :percent_of_daily_needs,
    :amount,
    :unit
  ]

  @type t :: %__MODULE__{
    :name => String.t | nil,
    :percent_of_daily_needs => float() | nil,
    :amount => integer() | nil,
    :unit => String.t | nil
  }

  def decode(value) do
    value
  end
end

