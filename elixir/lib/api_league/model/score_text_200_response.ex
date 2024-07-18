# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.ScoreText200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :number_of_words,
    :number_of_sentences,
    :readability,
    :skimmability,
    :interestingness,
    :style,
    :total_score
  ]

  @type t :: %__MODULE__{
    :number_of_words => integer() | nil,
    :number_of_sentences => integer() | nil,
    :readability => APILeague.Model.ScoreText200ResponseReadability.t | nil,
    :skimmability => APILeague.Model.ScoreText200ResponseSkimmability.t | nil,
    :interestingness => APILeague.Model.ScoreText200ResponseInterestingness.t | nil,
    :style => APILeague.Model.ScoreText200ResponseStyle.t | nil,
    :total_score => float() | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:readability, :struct, APILeague.Model.ScoreText200ResponseReadability)
     |> Deserializer.deserialize(:skimmability, :struct, APILeague.Model.ScoreText200ResponseSkimmability)
     |> Deserializer.deserialize(:interestingness, :struct, APILeague.Model.ScoreText200ResponseInterestingness)
     |> Deserializer.deserialize(:style, :struct, APILeague.Model.ScoreText200ResponseStyle)
  end
end

