# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.apileague.client.Model.InlineResponse20014Results do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"title",
    :"summary",
    :"url"
  ]

  @type t :: %__MODULE__{
    :"title" => String.t | nil,
    :"summary" => String.t | nil,
    :"url" => String.t | nil
  }
end

defimpl Poison.Decoder, for: com.apileague.client.Model.InlineResponse20014Results do
  def decode(value, _options) do
    value
  end
end

