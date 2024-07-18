# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.SearchRecipes200ResponseRecipesInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :images,
    :nutrition,
    :id,
    :title
  ]

  @type t :: %__MODULE__{
    :images => [String.t] | nil,
    :nutrition => APILeague.Model.SearchRecipes200ResponseRecipesInnerNutrition.t | nil,
    :id => integer() | nil,
    :title => String.t | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:nutrition, :struct, APILeague.Model.SearchRecipes200ResponseRecipesInnerNutrition)
  end
end

