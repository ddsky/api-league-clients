# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.RandomRiddle200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :riddle,
    :answer,
    :difficulty
  ]

  @type t :: %__MODULE__{
    :riddle => String.t | nil,
    :answer => String.t | nil,
    :difficulty => String.t | nil
  }

  def decode(value) do
    value
  end
end

