# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.VectorSearchApi200ResponseVectorsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :license,
    :title,
    :author,
    :image_url
  ]

  @type t :: %__MODULE__{
    :license => String.t | nil,
    :title => String.t | nil,
    :author => String.t | nil,
    :image_url => String.t | nil
  }

  def decode(value) do
    value
  end
end

