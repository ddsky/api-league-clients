# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.ExtractNews200ResponseImagesInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :width,
    :title,
    :url,
    :height
  ]

  @type t :: %__MODULE__{
    :width => integer() | nil,
    :title => String.t | nil,
    :url => String.t | nil,
    :height => integer() | nil
  }

  def decode(value) do
    value
  end
end
