# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.RetrieveRecipeInformation200ResponseIngredientsInnerMeasures do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :metric,
    :us
  ]

  @type t :: %__MODULE__{
    :metric => APILeague.Model.RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.t | nil,
    :us => APILeague.Model.RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric.t | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:metric, :struct, APILeague.Model.RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric)
     |> Deserializer.deserialize(:us, :struct, APILeague.Model.RetrieveRecipeInformation200ResponseIngredientsInnerMeasuresMetric)
  end
end
