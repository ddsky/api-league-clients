# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.GenerateNonsenseWordApi200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :word,
    :rating
  ]

  @type t :: %__MODULE__{
    :word => String.t | nil,
    :rating => float() | nil
  }

  def decode(value) do
    value
  end
end

