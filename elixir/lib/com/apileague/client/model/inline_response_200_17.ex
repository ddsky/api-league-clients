# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.apileague.client.Model.InlineResponse20017 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"language",
    :"confidence"
  ]

  @type t :: %__MODULE__{
    :"language" => String.t | nil,
    :"confidence" => float() | nil
  }
end

defimpl Poison.Decoder, for: com.apileague.client.Model.InlineResponse20017 do
  def decode(value, _options) do
    value
  end
end

