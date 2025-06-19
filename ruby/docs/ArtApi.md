# OpenapiClient::ArtApi

All URIs are relative to *https://api.apileague.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**art_search_api**](ArtApi.md#art_search_api) | **GET** /search-artworks | Art Search API |
| [**image_to_ascii_art_by_urlapi**](ArtApi.md#image_to_ascii_art_by_urlapi) | **GET** /convert-image-to-ascii-txt | Image to Ascii Art by URL API |
| [**random_poem_api**](ArtApi.md#random_poem_api) | **GET** /retrieve-random-poem | Random Poem API |
| [**retrieve_artwork_by_id**](ArtApi.md#retrieve_artwork_by_id) | **GET** /retrieve-artwork | Retrieve Artwork by Id |


## art_search_api

> <ArtSearchAPI200Response> art_search_api(opts)

Art Search API

Search and filter artworks by query, creation time, material, technique, and origin. The natural language search uses semantic AI to understand the context of your query, so you can search for artworks by their style, subject, or even emotions they evoke. The API returns a list of artworks matching the given criteria.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ArtApi.new
opts = {
  query: 'landscape paintings', # String | The search query.
  earliest_start_date: 1750, # Integer | The artwork must have been created after this date.
  latest_start_date: 1755, # Integer | The artwork must have been created before this date.
  earliest_end_date: 1751, # Integer | For artworks with a period of creation, the completion date must be after this date.
  latest_end_date: 1760, # Integer | For artworks with a period of creation, the completion date must be before this date.
  min_ratio: 0.8, # Float | The minimum aspect ratio (width/height) the artwork image must have.
  max_ratio: 1.5, # Float | The maximum aspect ratio (width/height) the artwork image must have.
  type: 'painting', # String | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy.
  material: 'ivory', # String | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood.
  technique: 'etching', # String | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging.
  origin: 'Italy', # String | The country or region of origin for the artwork
  offset: 0, # Integer | The number of artworks to skip in range [0,1000]
  number: 10 # Integer | The number of artworks to return in range [1,10]
}

begin
  # Art Search API
  result = api_instance.art_search_api(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ArtApi->art_search_api: #{e}"
end
```

#### Using the art_search_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ArtSearchAPI200Response>, Integer, Hash)> art_search_api_with_http_info(opts)

```ruby
begin
  # Art Search API
  data, status_code, headers = api_instance.art_search_api_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ArtSearchAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ArtApi->art_search_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | The search query. | [optional] |
| **earliest_start_date** | **Integer** | The artwork must have been created after this date. | [optional] |
| **latest_start_date** | **Integer** | The artwork must have been created before this date. | [optional] |
| **earliest_end_date** | **Integer** | For artworks with a period of creation, the completion date must be after this date. | [optional] |
| **latest_end_date** | **Integer** | For artworks with a period of creation, the completion date must be before this date. | [optional] |
| **min_ratio** | **Float** | The minimum aspect ratio (width/height) the artwork image must have. | [optional] |
| **max_ratio** | **Float** | The maximum aspect ratio (width/height) the artwork image must have. | [optional] |
| **type** | **String** | The artwork type. Possible values are tapestry, collotype, collage, printmaking, cutting, digital_art, sculpture, metalwork, fragment, token, embroidery, painting, jewellery, print, ornament, photograph, statuette, furniture, needlework, drawing, miniature, tile, stereograph, calligraphy. | [optional] |
| **material** | **String** | The art material used. Possible values are ferrous_lactate, ink, textile, metal, bronze, canvas, stone, reduced_iron, horn, stoneware, in_shell_walnuts, chalk, velvet, silver, charcoal, gold_leaf, candied_walnuts, porcelain, walnut_halves, jade, cotton, paint, ferrous_fumarate, graphite, cobalt, sandstone, plastic, walnut_pieces, clay, walnuts, cupric_sulfate, ivory, ferric_orthophosphate, earthenware, tin, pen, linen, mahogany, electrolytic_iron, silk, crayon, black_walnuts, brush, beech_wood, terracotta, glass, lead, brass, oil_paint, pencil, leather, gold, marble, watercolor, diamond, iron, ferrous_sulfate, walnut_halves_and_pieces, gouache, wool, ceramic, parchment, cork, limestone, copper_gluconate, paper, pastel, copper, cardboard, plant_material, oak, wood. | [optional] |
| **technique** | **String** | The art technique used. Possible values are engraving, grinding, embroidering, etching, vitrification, gilding, lithography, knitting, cyanotype, silkscreen, woodcut, printing, drypoint, photolithography, weaving, sawing, casting, glassblowing, block_printing, photographing, forging. | [optional] |
| **origin** | **String** | The country or region of origin for the artwork | [optional] |
| **offset** | **Integer** | The number of artworks to skip in range [0,1000] | [optional] |
| **number** | **Integer** | The number of artworks to return in range [1,10] | [optional] |

### Return type

[**ArtSearchAPI200Response**](ArtSearchAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## image_to_ascii_art_by_urlapi

> String image_to_ascii_art_by_urlapi(url, opts)

Image to Ascii Art by URL API

Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ArtApi.new
url = 'https://upload.wikimedia.org/wikipedia/commons/3/35/Basic_human_drawing.png' # String | The URL to the image.
opts = {
  width: 200, # Integer | The maximum width of the image (default 400, max. 500).
  height: 200 # Integer | The maximum height of the image (default 400, max. 500).
}

begin
  # Image to Ascii Art by URL API
  result = api_instance.image_to_ascii_art_by_urlapi(url, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ArtApi->image_to_ascii_art_by_urlapi: #{e}"
end
```

#### Using the image_to_ascii_art_by_urlapi_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> image_to_ascii_art_by_urlapi_with_http_info(url, opts)

```ruby
begin
  # Image to Ascii Art by URL API
  data, status_code, headers = api_instance.image_to_ascii_art_by_urlapi_with_http_info(url, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue OpenapiClient::ApiError => e
  puts "Error when calling ArtApi->image_to_ascii_art_by_urlapi_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The URL to the image. |  |
| **width** | **Integer** | The maximum width of the image (default 400, max. 500). | [optional] |
| **height** | **Integer** | The maximum height of the image (default 400, max. 500). | [optional] |

### Return type

**String**

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/plain


## random_poem_api

> <RandomPoemAPI200Response> random_poem_api(opts)

Random Poem API

Retrieve a random poem by many famous authors. You can filter poem's by length (number of lines).

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ArtApi.new
opts = {
  min_lines: 5, # Integer | The minimum number of lines of the poem.
  max_lines: 20 # Integer | The maximum number of lines of the poem.
}

begin
  # Random Poem API
  result = api_instance.random_poem_api(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ArtApi->random_poem_api: #{e}"
end
```

#### Using the random_poem_api_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RandomPoemAPI200Response>, Integer, Hash)> random_poem_api_with_http_info(opts)

```ruby
begin
  # Random Poem API
  data, status_code, headers = api_instance.random_poem_api_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RandomPoemAPI200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ArtApi->random_poem_api_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **min_lines** | **Integer** | The minimum number of lines of the poem. | [optional] |
| **max_lines** | **Integer** | The maximum number of lines of the poem. | [optional] |

### Return type

[**RandomPoemAPI200Response**](RandomPoemAPI200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## retrieve_artwork_by_id

> <RetrieveArtworkById200Response> retrieve_artwork_by_id(id)

Retrieve Artwork by Id

Get one artwork by its id. The API returns the title, image URL, start and end date, and a description of the artwork.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: apiKey
  config.api_key['apiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['apiKey'] = 'Bearer'

  # Configure API key authorization: headerApiKey
  config.api_key['headerApiKey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['headerApiKey'] = 'Bearer'
end

api_instance = OpenapiClient::ArtApi.new
id = 26226350 # Integer | The id of the artwork.

begin
  # Retrieve Artwork by Id
  result = api_instance.retrieve_artwork_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ArtApi->retrieve_artwork_by_id: #{e}"
end
```

#### Using the retrieve_artwork_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RetrieveArtworkById200Response>, Integer, Hash)> retrieve_artwork_by_id_with_http_info(id)

```ruby
begin
  # Retrieve Artwork by Id
  data, status_code, headers = api_instance.retrieve_artwork_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RetrieveArtworkById200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ArtApi->retrieve_artwork_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The id of the artwork. |  |

### Return type

[**RetrieveArtworkById200Response**](RetrieveArtworkById200Response.md)

### Authorization

[apiKey](../README.md#apiKey), [headerApiKey](../README.md#headerApiKey)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

