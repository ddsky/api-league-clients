# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.apileague.client.Model.InlineResponse20015 do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"results"
  ]

  @type t :: %__MODULE__{
    :"results" => [com.apileague.client.Model.InlineResponse20015Results.t] | nil
  }
end

defimpl Poison.Decoder, for: com.apileague.client.Model.InlineResponse20015 do
  import com.apileague.client.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"results", :list, com.apileague.client.Model.InlineResponse20015Results, options)
  end
end

