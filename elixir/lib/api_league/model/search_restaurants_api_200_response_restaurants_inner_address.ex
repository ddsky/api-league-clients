# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.SearchRestaurantsApi200ResponseRestaurantsInnerAddress do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :zipcode,
    :country,
    :city,
    :latitude,
    :lon,
    :street_addr_2,
    :state,
    :street_addr,
    :lat,
    :longitude
  ]

  @type t :: %__MODULE__{
    :zipcode => String.t | nil,
    :country => String.t | nil,
    :city => String.t | nil,
    :latitude => float() | nil,
    :lon => float() | nil,
    :street_addr_2 => String.t | nil,
    :state => String.t | nil,
    :street_addr => String.t | nil,
    :lat => float() | nil,
    :longitude => float() | nil
  }

  def decode(value) do
    value
  end
end

