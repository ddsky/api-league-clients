# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.SearchBooks200Response do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :available,
    :number,
    :offset,
    :books
  ]

  @type t :: %__MODULE__{
    :available => integer() | nil,
    :number => integer() | nil,
    :offset => integer() | nil,
    :books => [[APILeague.Model.SearchBooks200ResponseBooksInnerInner.t]] | nil
  }

  def decode(value) do
    value
  end
end

