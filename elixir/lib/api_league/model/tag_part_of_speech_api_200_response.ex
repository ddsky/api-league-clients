# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.TagPartOfSpeechApi200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :tagged_text
  ]

  @type t :: %__MODULE__{
    :tagged_text => String.t | nil
  }

  def decode(value) do
    value
  end
end

