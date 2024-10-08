# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Api.Media do
  @moduledoc """
  API calls for all endpoints tagged `Media`.
  """

  alias APILeague.Connection
  import APILeague.RequestBuilder

  @doc """
  Detect Main Image Color
  Detect the main color of an image. The API returns a list of colors and their hex codes. The API supports images in the following formats: JPEG, PNG, and GIF.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `url` (String.t): The url of the image for which the colors should be detected.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%DetectMainImageColor200ResponseInner{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec detect_main_image_color(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, [APILeague.Model.DetectMainImageColor200ResponseInner.t]} | {:error, Tesla.Env.t}
  def detect_main_image_color(connection, url, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/detect-color")
      |> add_param(:query, :url, url)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.DetectMainImageColor200ResponseInner},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Rescale Image
  Rescale an image to a specific width and height. The image will be resized to fit the specified width and height while maintaining the original aspect ratio unless the crop parameter is set to true. The image will be returned in the same format as the original image.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `url` (String.t): The url of the image to be rescaled.
  - `width` (integer()): The desired width of the rescaled image.
  - `height` (integer()): The desired height of the rescaled image.
  - `crop` (boolean()): Whether the image should be cropped. If true, the returned image will have exactly the given width and height and some content might have been cropped from the left/right or top/bottom. If this parameter is false, the image will keep its ratio but will be resized to fill the given box. Some content might be outside the box though.
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec rescale_image(Tesla.Env.client, String.t, integer(), integer(), boolean(), keyword()) :: {:ok, nil} | {:ok, String.t} | {:error, Tesla.Env.t}
  def rescale_image(connection, url, width, height, crop, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/rescale-image")
      |> add_param(:query, :url, url)
      |> add_param(:query, :width, width)
      |> add_param(:query, :height, height)
      |> add_param(:query, :crop, crop)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Search Icons
  Search through millions of icons to match any topic you want.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `query` (String.t): The search query.
  - `opts` (keyword): Optional parameters
    - `:"only-public-domain"` (boolean()): If true, only public domain icons will be returned.
    - `:number` (integer()): The number of icons to return in range [1,100]

  ### Returns

  - `{:ok, APILeague.Model.SearchIcons200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_icons(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.SearchIcons200Response.t} | {:error, Tesla.Env.t}
  def search_icons(connection, query, opts \\ []) do
    optional_params = %{
      :"only-public-domain" => :query,
      :number => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/search-icons")
      |> add_param(:query, :query, query)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.SearchIcons200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Search Royalty Free Images
  Search through hundreds of thousands of royalty free images to match any topic you want. The images are returned in a list with the URL, width, and height of the image. Additionally, you can find the license type and link of the image.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `query` (String.t): The search query.
  - `opts` (keyword): Optional parameters
    - `:number` (integer()): The number of images to return in range [1,100]

  ### Returns

  - `{:ok, APILeague.Model.SearchRoyaltyFreeImages200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_royalty_free_images(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.SearchRoyaltyFreeImages200Response.t} | {:error, Tesla.Env.t}
  def search_royalty_free_images(connection, query, opts \\ []) do
    optional_params = %{
      :number => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/search-images")
      |> add_param(:query, :query, query)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.SearchRoyaltyFreeImages200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end
end
