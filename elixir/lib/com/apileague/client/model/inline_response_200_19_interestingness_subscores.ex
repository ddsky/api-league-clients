# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.apileague.client.Model.InlineResponse20019InterestingnessSubscores do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"title_rating_score",
    :"quote_score",
    :"length_score",
    :"link_score",
    :"google_hits_score"
  ]

  @type t :: %__MODULE__{
    :"title_rating_score" => [integer()] | nil,
    :"quote_score" => [integer()] | nil,
    :"length_score" => [integer()] | nil,
    :"link_score" => [integer()] | nil,
    :"google_hits_score" => [integer()] | nil
  }
end

defimpl Poison.Decoder, for: com.apileague.client.Model.InlineResponse20019InterestingnessSubscores do
  def decode(value, _options) do
    value
  end
end

