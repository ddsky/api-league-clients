# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.ScoreText200ResponseReadabilitySubscores do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :reading_time_seconds,
    :forcast,
    :flesch,
    :smog,
    :ari,
    :lix,
    :coleman_liau,
    :kincaid,
    :fog
  ]

  @type t :: %__MODULE__{
    :reading_time_seconds => integer() | nil,
    :forcast => float() | nil,
    :flesch => float() | nil,
    :smog => float() | nil,
    :ari => float() | nil,
    :lix => float() | nil,
    :coleman_liau => float() | nil,
    :kincaid => float() | nil,
    :fog => float() | nil
  }

  def decode(value) do
    value
  end
end

