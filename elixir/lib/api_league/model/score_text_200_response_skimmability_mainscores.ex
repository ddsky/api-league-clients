# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.ScoreText200ResponseSkimmabilityMainscores do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :total_possible,
    :total
  ]

  @type t :: %__MODULE__{
    :total_possible => integer() | nil,
    :total => float() | nil
  }

  def decode(value) do
    value
  end
end
