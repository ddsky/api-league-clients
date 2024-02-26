# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.apileague.client.Model.InlineResponse20018SkimmabilitySubscores do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"bullet_point_ratio_score",
    :"image_score",
    :"highlighted_word_ratio_score",
    :"video_score",
    :"paragraph_score",
    :"paragraph_headline_ratio_score"
  ]

  @type t :: %__MODULE__{
    :"bullet_point_ratio_score" => [integer()] | nil,
    :"image_score" => [integer()] | nil,
    :"highlighted_word_ratio_score" => [integer()] | nil,
    :"video_score" => [integer()] | nil,
    :"paragraph_score" => [integer()] | nil,
    :"paragraph_headline_ratio_score" => [integer()] | nil
  }
end

defimpl Poison.Decoder, for: com.apileague.client.Model.InlineResponse20018SkimmabilitySubscores do
  def decode(value, _options) do
    value
  end
end

