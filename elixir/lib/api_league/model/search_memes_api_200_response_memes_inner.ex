# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.SearchMemesApi200ResponseMemesInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :type,
    :description,
    :url
  ]

  @type t :: %__MODULE__{
    :type => String.t | nil,
    :description => String.t | nil,
    :url => String.t | nil
  }

  def decode(value) do
    value
  end
end

