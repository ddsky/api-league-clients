# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.ExtractEntitiesApi200ResponseEntitiesInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :start_position,
    :image,
    :type,
    :value,
    :end_position
  ]

  @type t :: %__MODULE__{
    :start_position => integer() | nil,
    :image => String.t | nil,
    :type => String.t | nil,
    :value => String.t | nil,
    :end_position => integer() | nil
  }

  def decode(value) do
    value
  end
end
