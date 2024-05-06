# NOTE: This file is auto generated by OpenAPI Generator 7.5.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Api.Math do
  @moduledoc """
  API calls for all endpoints tagged `Math`.
  """

  alias APILeague.Connection
  import APILeague.RequestBuilder

  @doc """
  Convert Units
  Convert units from one to another. The API returns the amount and the unit of the target unit.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `source_amount` (float()): The source amount.
  - `source_unit` (String.t): The source unit.
  - `target_unit` (String.t): The unit to which should be converted.
  - `opts` (keyword): Optional parameters
    - `:"food-name"` (String.t): An optional food name. For converting foods the food is relevant as they have different densities.

  ### Returns

  - `{:ok, APILeague.Model.ConvertUnits200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec convert_units(Tesla.Env.client, float(), String.t, String.t, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.ConvertUnits200Response.t} | {:error, Tesla.Env.t}
  def convert_units(connection, source_amount, source_unit, target_unit, opts \\ []) do
    optional_params = %{
      :"food-name" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/convert-units")
      |> add_param(:query, :"source-amount", source_amount)
      |> add_param(:query, :"source-unit", source_unit)
      |> add_param(:query, :"target-unit", target_unit)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.ConvertUnits200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end
end
