# NOTE: This file is auto generated by OpenAPI Generator 7.3.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APILeague.Api.Books do
  @moduledoc """
  API calls for all endpoints tagged `Books`.
  """

  alias APILeague.Connection
  import APILeague.RequestBuilder

  @doc """
  Find Similar Books
  Find books that are similar to the given book. This is useful for recommending books to users based on their reading history or preferences. The response will contain a list of similar books with their title, id, and cover image.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `id` (integer()): The id of the book to which similar books should be found.
  - `opts` (keyword): Optional parameters
    - `:number` (integer()): The number of similar books to return in range [1,100]

  ### Returns

  - `{:ok, APILeague.Model.FindSimilarBooks200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec find_similar_books(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, APILeague.Model.FindSimilarBooks200Response.t} | {:error, Tesla.Env.t}
  def find_similar_books(connection, id, opts \\ []) do
    optional_params = %{
      :number => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/list-similar-books")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.FindSimilarBooks200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end

  @doc """
  Search Books
  Search and filter books based on matching a query, the ISBN, rating, and more fields. The query is semantically parsed using our own large ontology. That means you can search paranormal books and the ontology knows that Aliens, Werewolves, Ghosts, and Shapeshifters fall into that category.

  ### Parameters

  - `connection` (APILeague.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:query` (String.t): The search query.
    - `:"earliest-publish-year"` (integer()): The books must have been published after this year.
    - `:"latest-publish-year"` (integer()): The books must have been published before this year.
    - `:"min-rating"` (float()): The minimum rating the book must have gotten in the interval [0,1].
    - `:"max-rating"` (float()): The maximum rating the book must have gotten in the interval [0,1].
    - `:genres` (String.t): A comma-separated list of genres. Only books from any of the given genres will be returned.
    - `:authors` (String.t): A comma-separated list of author ids or names. Only books from any of the given authors will be returned. You can retrieve author ids from the search authors endpoint. Pass author names is slower and if two authors have the same name you can't disambiguate.
    - `:isbn` (String.t): Only the book matching the ISBN-13 will be returned
    - `:oclc` (String.t): Only the book matching the OCLC will be returned
    - `:sort` (String.t): The sorting criteria (publish-date or rating).
    - `:"sort-direction"` (String.t): Whether to sort ascending or descending (ASC or DESC).
    - `:"group-results"` (boolean()): Whether to group similar editions of the same book.
    - `:offset` (integer()): The number of books to skip in range [0,1000]
    - `:number` (integer()): The number of books to return in range [1,100]

  ### Returns

  - `{:ok, APILeague.Model.SearchBooks200Response.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec search_books(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, APILeague.Model.SearchBooks200Response.t} | {:error, Tesla.Env.t}
  def search_books(connection, opts \\ []) do
    optional_params = %{
      :query => :query,
      :"earliest-publish-year" => :query,
      :"latest-publish-year" => :query,
      :"min-rating" => :query,
      :"max-rating" => :query,
      :genres => :query,
      :authors => :query,
      :isbn => :query,
      :oclc => :query,
      :sort => :query,
      :"sort-direction" => :query,
      :"group-results" => :query,
      :offset => :query,
      :number => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/search-books")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APILeague.Model.SearchBooks200Response},
      {401, false},
      {402, false},
      {403, false},
      {404, false},
      {406, false},
      {429, false}
    ])
  end
end
