# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.FindSimilarBooksApi200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :similar_books
  ]

  @type t :: %__MODULE__{
    :similar_books => [APILeague.Model.SearchBooksApi200ResponseBooksInnerInner.t] | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:similar_books, :list, APILeague.Model.SearchBooksApi200ResponseBooksInnerInner)
  end
end
