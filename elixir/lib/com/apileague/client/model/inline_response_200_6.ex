# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.apileague.client.Model.InlineResponse2006 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"description",
    :"url",
    :"type",
    :"width",
    :"height",
    :"ratio"
  ]

  @type t :: %__MODULE__{
    :"description" => String.t | nil,
    :"url" => String.t | nil,
    :"type" => String.t | nil,
    :"width" => integer() | nil,
    :"height" => integer() | nil,
    :"ratio" => float() | nil
  }
end

defimpl Poison.Decoder, for: com.apileague.client.Model.InlineResponse2006 do
  def decode(value, _options) do
    value
  end
end

