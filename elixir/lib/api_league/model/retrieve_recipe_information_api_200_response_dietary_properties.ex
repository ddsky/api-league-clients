# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.RetrieveRecipeInformationApi200ResponseDietaryProperties do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :low_fodmap,
    :vegetarian,
    :vegan,
    :gluten_free,
    :dairy_free,
    :gaps,
    :diets
  ]

  @type t :: %__MODULE__{
    :low_fodmap => boolean() | nil,
    :vegetarian => boolean() | nil,
    :vegan => boolean() | nil,
    :gluten_free => boolean() | nil,
    :dairy_free => boolean() | nil,
    :gaps => String.t | nil,
    :diets => [String.t] | nil
  }

  def decode(value) do
    value
  end
end
