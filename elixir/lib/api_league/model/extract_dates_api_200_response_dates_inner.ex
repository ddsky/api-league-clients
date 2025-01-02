# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.ExtractDatesApi200ResponseDatesInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :start_position,
    :date,
    :normalized_date,
    :tag,
    :end_position
  ]

  @type t :: %__MODULE__{
    :start_position => integer() | nil,
    :date => String.t | nil,
    :normalized_date => float() | nil,
    :tag => String.t | nil,
    :end_position => integer() | nil
  }

  def decode(value) do
    value
  end
end

