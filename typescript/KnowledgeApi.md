# .KnowledgeApi

All URIs are relative to *https://api.apileague.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**randomAffirmationAPI**](KnowledgeApi.md#randomAffirmationAPI) | **GET** /retrieve-random-affirmation | Random Affirmation API
[**randomLifeHackAPI**](KnowledgeApi.md#randomLifeHackAPI) | **GET** /retrieve-random-life-hack | Random Life Hack API
[**randomQuoteAPI**](KnowledgeApi.md#randomQuoteAPI) | **GET** /retrieve-random-quote | Random Quote API
[**randomRiddleAPI**](KnowledgeApi.md#randomRiddleAPI) | **GET** /retrieve-random-riddle | Random Riddle API
[**randomTriviaAPI**](KnowledgeApi.md#randomTriviaAPI) | **GET** /retrieve-random-trivia | Random Trivia API


# **randomAffirmationAPI**
> RandomAffirmationAPI200Response randomAffirmationAPI()

This endpoint returns a random affirmation to boost your confidence and motivation. Affirmations are positive statements that can help you overcome negative thoughts and improve your mindset and well-being.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .KnowledgeApi(configuration);

let body:any = {};

apiInstance.randomAffirmationAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters
This endpoint does not need any parameter.


### Return type

**RandomAffirmationAPI200Response**

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

# **randomLifeHackAPI**
> RandomLifeHackAPI200Response randomLifeHackAPI()

This endpoint returns a random life hack to make your life easier. Life hacks are simple and clever tips or tricks that can help you save time, money, or effort in your daily life.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .KnowledgeApi(configuration);

let body:.KnowledgeApiRandomLifeHackAPIRequest = {
  // number | The maximum length of the hack in letters. (optional)
  maxLength: 300,
};

apiInstance.randomLifeHackAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | [**number**] | The maximum length of the hack in letters. | (optional) defaults to undefined


### Return type

**RandomLifeHackAPI200Response**

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

# **randomQuoteAPI**
> RandomQuoteAPI200Response randomQuoteAPI()

This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .KnowledgeApi(configuration);

let body:.KnowledgeApiRandomQuoteAPIRequest = {
  // number | The minimum length of the quote in letters. (optional)
  minLength: 120,
  // number | The maximum length of the quote in letters. (optional)
  maxLength: 300,
};

apiInstance.randomQuoteAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **minLength** | [**number**] | The minimum length of the quote in letters. | (optional) defaults to undefined
 **maxLength** | [**number**] | The maximum length of the quote in letters. | (optional) defaults to undefined


### Return type

**RandomQuoteAPI200Response**

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

# **randomRiddleAPI**
> RandomRiddleAPI200Response randomRiddleAPI()

The riddles API returns a random riddle or brain-teaser. Riddles are a great way to exercise your brain and keep it sharp. The API supports brain-teasers in three difficulty levels: easy, medium, and hard. You can also get a random riddle without specifying a difficulty level.

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .KnowledgeApi(configuration);

let body:.KnowledgeApiRandomRiddleAPIRequest = {
  // string | The difficulty of the riddle, either \"easy\", \"medium\", or \"hard\". (optional)
  difficulty: "easy",
};

apiInstance.randomRiddleAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **difficulty** | [**string**] | The difficulty of the riddle, either \&quot;easy\&quot;, \&quot;medium\&quot;, or \&quot;hard\&quot;. | (optional) defaults to undefined


### Return type

**RandomRiddleAPI200Response**

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

# **randomTriviaAPI**
> RandomTriviaAPI200Response randomTriviaAPI()

This endpoint returns a random piece of trivia like \"Rio de Janeiro was once the capital of Portugal, making it the only European capital outside of Europe.\".

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .KnowledgeApi(configuration);

let body:.KnowledgeApiRandomTriviaAPIRequest = {
  // number | The maximum length of the trivia in letters. (optional)
  maxLength: 300,
};

apiInstance.randomTriviaAPI(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxLength** | [**number**] | The maximum length of the trivia in letters. | (optional) defaults to undefined


### Return type

**RandomTriviaAPI200Response**

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


