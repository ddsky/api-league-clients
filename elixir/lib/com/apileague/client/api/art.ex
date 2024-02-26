# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule com.apileague.client.Api.Art do
  @moduledoc """
  API calls for all endpoints tagged `Art`.
  """

  alias com.apileague.client.Connection
  import com.apileague.client.RequestBuilder


  @doc """
  Image to Ascii Art by URL
  Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

  ## Parameters

  - connection (com.apileague.client.Connection): Connection to server
  - url (String.t): The URL to the image.
  - opts (KeywordList): [optional] Optional parameters
    - :width (integer()): The maximum width of the image (default 400, max. 500).
    - :height (integer()): The maximum height of the image (default 400, max. 500).
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec image_to_ascii_art_by_url(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def image_to_ascii_art_by_url(connection, url, opts \\ []) do
    optional_params = %{
      :"width" => :query,
      :"height" => :query
    }
    %{}
    |> method(:get)
    |> url("/convert-image-to-ascii-txt")
    |> add_param(:query, :"url", url)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, false},
      { 401, false},
      { 402, false},
      { 403, false},
      { 404, false},
      { 406, false},
      { 429, false}
    ])
  end

  @doc """
  Random Poem
  Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).

  ## Parameters

  - connection (com.apileague.client.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :min_lines (integer()): The minimum number of lines of the poem.
    - :max_lines (integer()): The maximum number of lines of the poem.
  ## Returns

  {:ok, com.apileague.client.Model.InlineResponse20011.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec random_poem(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, com.apileague.client.Model.InlineResponse20011.t} | {:error, Tesla.Env.t}
  def random_poem(connection, opts \\ []) do
    optional_params = %{
      :"min-lines" => :query,
      :"max-lines" => :query
    }
    %{}
    |> method(:get)
    |> url("/retrieve-random-poem")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      { 200, %com.apileague.client.Model.InlineResponse20011{}},
      { 401, false},
      { 402, false},
      { 403, false},
      { 404, false},
      { 406, false},
      { 429, false}
    ])
  end
end
