# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :amount,
    :unit
  ]

  @type t :: %__MODULE__{
    :name => String.t | nil,
    :amount => float() | nil,
    :unit => String.t | nil
  }

  def decode(value) do
    value
  end
end

