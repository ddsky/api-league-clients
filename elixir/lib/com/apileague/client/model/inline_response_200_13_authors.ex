# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.apileague.client.Model.InlineResponse20013Authors do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"link",
    :"name"
  ]

  @type t :: %__MODULE__{
    :"link" => String.t | nil,
    :"name" => String.t | nil
  }
end

defimpl Poison.Decoder, for: com.apileague.client.Model.InlineResponse20013Authors do
  def decode(value, _options) do
    value
  end
end

