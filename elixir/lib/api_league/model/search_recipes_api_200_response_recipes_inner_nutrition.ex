# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.SearchRecipesApi200ResponseRecipesInnerNutrition do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :nutrients
  ]

  @type t :: %__MODULE__{
    :nutrients => [APILeague.Model.SearchRecipesApi200ResponseRecipesInnerNutritionNutrientsInner.t] | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:nutrients, :list, APILeague.Model.SearchRecipesApi200ResponseRecipesInnerNutritionNutrientsInner)
  end
end
