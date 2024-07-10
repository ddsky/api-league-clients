# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.SearchNews200ResponseNewsInner do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :summary,
    :image,
    :sentiment,
    :language,
    :video,
    :title,
    :url,
    :source_country,
    :id,
    :text,
    :category,
    :publish_date,
    :authors
  ]

  @type t :: %__MODULE__{
    :summary => String.t | nil,
    :image => String.t | nil,
    :sentiment => float() | nil,
    :language => String.t | nil,
    :video => String.t | nil,
    :title => String.t | nil,
    :url => String.t | nil,
    :source_country => String.t | nil,
    :id => integer() | nil,
    :text => String.t | nil,
    :category => String.t | nil,
    :publish_date => String.t | nil,
    :authors => [String.t] | nil
  }

  def decode(value) do
    value
  end
end

