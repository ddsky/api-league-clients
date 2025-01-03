# NOTE: This file is auto generated by OpenAPI Generator 7.8.0-SNAPSHOT (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Api.Knowledge do
  @moduledoc """
  API calls for all endpoints tagged `Knowledge`.
  """

  alias APILeague.Connection
  import APILeague.RequestBuilder

  @doc """
  Random Quote API
  This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"min-length"` (integer()): The minimum length of the quote in letters.
    - `:"max-length"` (integer()): The maximum length of the quote in letters.

  ### Returns

  - `{:ok, APILeague.Model.RandomQuoteApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec random_quote_api(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.RandomQuoteApi200Response.t} | {:error, Tesla.Env.t}
  def random_quote_api(connection, opts \\ []) do
    optional_params = %{
      :"min-length" => :query,
      :"max-length" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/retrieve-random-quote")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.RandomQuoteApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Random Riddle API
  The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:difficulty` (String.t): The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\".

  ### Returns

  - `{:ok, APILeague.Model.RandomRiddleApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec random_riddle_api(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.RandomRiddleApi200Response.t} | {:error, Tesla.Env.t}
  def random_riddle_api(connection, opts \\ []) do
    optional_params = %{
      :difficulty => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/retrieve-random-riddle")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.RandomRiddleApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Random Trivia API
  This endpoint returns a random piece of trivia like \"Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\".

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:"max-length"` (integer()): The maximum length of the trivia in letters.

  ### Returns

  - `{:ok, APILeague.Model.RandomTriviaApi200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec random_trivia_api(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.RandomTriviaApi200Response.t} | {:error, Tesla.Env.t}
  def random_trivia_api(connection, opts \\ []) do
    optional_params = %{
      :"max-length" => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/retrieve-random-trivia")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.RandomTriviaApi200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end
end
