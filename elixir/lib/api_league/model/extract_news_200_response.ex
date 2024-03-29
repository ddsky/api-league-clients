# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.ExtractNews200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :title,
    :text,
    :url,
    :image,
    :publish_date,
    :author,
    :language,
    :source_country,
    :sentiment
  ]

  @type t :: %__MODULE__{
    :title => String.t | nil,
    :text => String.t | nil,
    :url => String.t | nil,
    :image => String.t | nil,
    :publish_date => String.t | nil,
    :author => String.t | nil,
    :language => String.t | nil,
    :source_country => String.t | nil,
    :sentiment => float() | nil
  }

  def decode(value) do
    value
  end
end

