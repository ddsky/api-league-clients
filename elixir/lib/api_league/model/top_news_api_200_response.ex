# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.TopNewsApi200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :top_news,
    :language,
    :country
  ]

  @type t :: %__MODULE__{
    :top_news => [APILeague.Model.TopNewsApi200ResponseTopNewsInner.t] | nil,
    :language => String.t | nil,
    :country => String.t | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:top_news, :list, APILeague.Model.TopNewsApi200ResponseTopNewsInner)
  end
end

