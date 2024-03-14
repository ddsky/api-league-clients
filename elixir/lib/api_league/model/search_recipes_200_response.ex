# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.SearchRecipes200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :offset,
    :number,
    :recipes,
    :total_results
  ]

  @type t :: %__MODULE__{
    :offset => integer() | nil,
    :number => integer() | nil,
    :recipes => [APILeague.Model.SearchRecipes200ResponseRecipesInner.t] | nil,
    :total_results => integer() | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:recipes, :list, APILeague.Model.SearchRecipes200ResponseRecipesInner)
  end
end

