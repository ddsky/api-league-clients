# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.RetrieveRecipeInformationApi200ResponseIngredientsInnerMeasures do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :metric,
    :us
  ]

  @type t :: %__MODULE__{
    :metric => APILeague.Model.SearchDrinksApi200ResponseDrinksInnerIngredientsInnerMeasuresMetric.t | nil,
    :us => APILeague.Model.SearchDrinksApi200ResponseDrinksInnerIngredientsInnerMeasuresMetric.t | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:metric, :struct, APILeague.Model.SearchDrinksApi200ResponseDrinksInnerIngredientsInnerMeasuresMetric)
     |> Deserializer.deserialize(:us, :struct, APILeague.Model.SearchDrinksApi200ResponseDrinksInnerIngredientsInnerMeasuresMetric)
  end
end
