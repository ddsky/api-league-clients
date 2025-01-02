# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.ScoreTextApi200ResponseReadability do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :mainscores,
    :subscores
  ]

  @type t :: %__MODULE__{
    :mainscores => APILeague.Model.ScoreTextApi200ResponseReadabilityMainscores.t | nil,
    :subscores => APILeague.Model.ScoreTextApi200ResponseReadabilitySubscores.t | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:mainscores, :struct, APILeague.Model.ScoreTextApi200ResponseReadabilityMainscores)
     |> Deserializer.deserialize(:subscores, :struct, APILeague.Model.ScoreTextApi200ResponseReadabilitySubscores)
  end
end

