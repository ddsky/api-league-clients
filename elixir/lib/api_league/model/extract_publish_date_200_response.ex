# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.ExtractPublishDate200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :publish_date
  ]

  @type t :: %__MODULE__{
    :publish_date => String.t | nil
  }

  def decode(value) do
    value
  end
end
