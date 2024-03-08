# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.ScoreText200ResponseInterestingness do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :mainscores,
    :subscores
  ]

  @type t :: %__MODULE__{
    :mainscores => APILeague.Model.ScoreText200ResponseSkimmabilityMainscores.t | nil,
    :subscores => APILeague.Model.ScoreText200ResponseInterestingnessSubscores.t | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:mainscores, :struct, APILeague.Model.ScoreText200ResponseSkimmabilityMainscores)
     |> Deserializer.deserialize(:subscores, :struct, APILeague.Model.ScoreText200ResponseInterestingnessSubscores)
  end
end

