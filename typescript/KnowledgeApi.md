# .KnowledgeApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**randomQuote**](KnowledgeApi.md#randomQuote) | **GET** /retrieve-random-quote | Random Quote
[**randomRiddle**](KnowledgeApi.md#randomRiddle) | **GET** /retrieve-random-riddle | Random Riddle
[**randomTrivia**](KnowledgeApi.md#randomTrivia) | **GET** /retrieve-random-trivia | Random Trivia


# **randomQuote**
> RandomQuote200Response randomQuote()

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .KnowledgeApi(configuration);

let body:.KnowledgeApiRandomQuoteRequest = {
  // number | The minimum length of the quote in letters. (optional)
  minLength: 120,
  // number | The maximum length of the quote in letters. (optional)
  maxLength: 300,
};

apiInstance.randomQuote(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLength** | [**number**] | The minimum length of the quote in letters. | (optional) defaults to undefined
 **maxLength** | [**number**] | The maximum length of the quote in letters. | (optional) defaults to undefined


### Return type

**RandomQuote200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **randomRiddle**
> RandomRiddle200Response randomRiddle()

The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .KnowledgeApi(configuration);

let body:.KnowledgeApiRandomRiddleRequest = {
  // string | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\". (optional)
  difficulty: "easy",
};

apiInstance.randomRiddle(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **difficulty** | [**string**] | The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;. | (optional) defaults to undefined


### Return type

**RandomRiddle200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **randomTrivia**
> RandomTrivia200Response randomTrivia()

This endpoint returns a random piece of trivia.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .KnowledgeApi(configuration);

let body:.KnowledgeApiRandomTriviaRequest = {
  // number | The maximum length of the trivia in letters. (optional)
  maxLength: 300,
};

apiInstance.randomTrivia(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | [**number**] | The maximum length of the trivia in letters. | (optional) defaults to undefined


### Return type

**RandomTrivia200Response**

### Authorization

[apiKey](README.md#apiKey), [headerApiKey](README.md#headerApiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Success |  -  |
**401** | Unauthorized |  -  |
**402** | Payment Required |  -  |
**403** | Forbidden |  -  |
**404** | Not Found |  -  |
**406** | Not Acceptable |  -  |
**429** | Too Many Requests |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


