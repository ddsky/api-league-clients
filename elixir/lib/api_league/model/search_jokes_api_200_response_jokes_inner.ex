# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.SearchJokesApi200ResponseJokesInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :joke
  ]

  @type t :: %__MODULE__{
    :joke => String.t | nil
  }

  def decode(value) do
    value
  end
end

