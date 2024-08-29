# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.DetectSentiment200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :document,
    :sentences
  ]

  @type t :: %__MODULE__{
    :document => APILeague.Model.DetectSentiment200ResponseDocument.t | nil,
    :sentences => [APILeague.Model.DetectSentiment200ResponseSentencesInner.t] | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:document, :struct, APILeague.Model.DetectSentiment200ResponseDocument)
     |> Deserializer.deserialize(:sentences, :list, APILeague.Model.DetectSentiment200ResponseSentencesInner)
  end
end

