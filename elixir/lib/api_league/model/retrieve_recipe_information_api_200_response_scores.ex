# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.RetrieveRecipeInformationApi200ResponseScores do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :meta_score,
    :weight_watcher_smart_points,
    :health_score
  ]

  @type t :: %__MODULE__{
    :meta_score => float() | nil,
    :weight_watcher_smart_points => integer() | nil,
    :health_score => integer() | nil
  }

  def decode(value) do
    value
  end
end

