# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.TopNews200ResponseTopNewsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :news
  ]

  @type t :: %__MODULE__{
    :news => [APILeague.Model.TopNews200ResponseTopNewsInnerNewsInner.t] | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:news, :list, APILeague.Model.TopNews200ResponseTopNewsInnerNewsInner)
  end
end

