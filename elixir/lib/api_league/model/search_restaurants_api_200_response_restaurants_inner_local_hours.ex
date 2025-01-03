# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Model.SearchRestaurantsApi200ResponseRestaurantsInnerLocalHours do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :operational,
    :delivery,
    :pickup,
    :dine_in
  ]

  @type t :: %__MODULE__{
    :operational => APILeague.Model.SearchRestaurantsApi200ResponseRestaurantsInnerLocalHoursOperational.t | nil,
    :delivery => APILeague.Model.SearchRestaurantsApi200ResponseRestaurantsInnerLocalHoursOperational.t | nil,
    :pickup => APILeague.Model.SearchRestaurantsApi200ResponseRestaurantsInnerLocalHoursOperational.t | nil,
    :dine_in => APILeague.Model.SearchRestaurantsApi200ResponseRestaurantsInnerLocalHoursOperational.t | nil
  }

  alias APILeague.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:operational, :struct, APILeague.Model.SearchRestaurantsApi200ResponseRestaurantsInnerLocalHoursOperational)
     |> Deserializer.deserialize(:delivery, :struct, APILeague.Model.SearchRestaurantsApi200ResponseRestaurantsInnerLocalHoursOperational)
     |> Deserializer.deserialize(:pickup, :struct, APILeague.Model.SearchRestaurantsApi200ResponseRestaurantsInnerLocalHoursOperational)
     |> Deserializer.deserialize(:dine_in, :struct, APILeague.Model.SearchRestaurantsApi200ResponseRestaurantsInnerLocalHoursOperational)
  end
end

