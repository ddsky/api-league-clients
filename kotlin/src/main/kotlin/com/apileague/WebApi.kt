/**
 *
 * Please note:
 * This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * Do not edit this file manually.
 *
 */

@file:Suppress(
    "ArrayInDataClass",
    "EnumEntryName",
    "RemoveRedundantQualifierName",
    "UnusedImport"
)

package com.apileague

import java.io.IOException
import okhttp3.OkHttpClient
import okhttp3.HttpUrl

import com.apileague.client.model.ExtractAuthorsAPI200Response
import com.apileague.client.model.ExtractContentFromAWebPageAPI200Response
import com.apileague.client.model.ExtractPublishDateAPI200Response
import com.apileague.client.model.RetrievePageRankAPI200Response
import com.apileague.client.model.SearchWebAPI200Response
import com.apileague.client.model.VerifyEmailAddressAPI200Response

import com.squareup.moshi.Json

import apileague.infrastructure.ApiClient
import apileague.infrastructure.ApiResponse
import apileague.infrastructure.ClientException
import apileague.infrastructure.ClientError
import apileague.infrastructure.ServerException
import apileague.infrastructure.ServerError
import apileague.infrastructure.MultiValueMap
import apileague.infrastructure.PartConfig
import apileague.infrastructure.RequestConfig
import apileague.infrastructure.RequestMethod
import apileague.infrastructure.ResponseType
import apileague.infrastructure.Success
import apileague.infrastructure.toMultiValue

class WebApi(basePath: kotlin.String = defaultBasePath, client: OkHttpClient = ApiClient.defaultClient) : ApiClient(basePath, client) {
    companion object {
        @JvmStatic
        val defaultBasePath: String by lazy {
            System.getProperties().getProperty(ApiClient.baseUrlKey, "https://api.apileague.com")
        }
    }

    /**
     * Extract Authors API
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * @param url The url with the article from which authors should be extracted.
     * @return ExtractAuthorsAPI200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun extractAuthorsAPI(url: kotlin.String) : ExtractAuthorsAPI200Response {
        val localVarResponse = extractAuthorsAPIWithHttpInfo(url = url)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as ExtractAuthorsAPI200Response
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()} ${localVarError.body}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * Extract Authors API
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * @param url The url with the article from which authors should be extracted.
     * @return ApiResponse<ExtractAuthorsAPI200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun extractAuthorsAPIWithHttpInfo(url: kotlin.String) : ApiResponse<ExtractAuthorsAPI200Response?> {
        val localVariableConfig = extractAuthorsAPIRequestConfig(url = url)

        return request<Unit, ExtractAuthorsAPI200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation extractAuthorsAPI
     *
     * @param url The url with the article from which authors should be extracted.
     * @return RequestConfig
     */
    fun extractAuthorsAPIRequestConfig(url: kotlin.String) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                put("url", listOf(url.toString()))
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/extract-authors",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = true,
            body = localVariableBody
        )
    }

    /**
     * Extract Content from a Web Page API
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * @param url The url for which the content will be extracted.
     * @return ExtractContentFromAWebPageAPI200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun extractContentFromAWebPageAPI(url: kotlin.String) : ExtractContentFromAWebPageAPI200Response {
        val localVarResponse = extractContentFromAWebPageAPIWithHttpInfo(url = url)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as ExtractContentFromAWebPageAPI200Response
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()} ${localVarError.body}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * Extract Content from a Web Page API
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * @param url The url for which the content will be extracted.
     * @return ApiResponse<ExtractContentFromAWebPageAPI200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun extractContentFromAWebPageAPIWithHttpInfo(url: kotlin.String) : ApiResponse<ExtractContentFromAWebPageAPI200Response?> {
        val localVariableConfig = extractContentFromAWebPageAPIRequestConfig(url = url)

        return request<Unit, ExtractContentFromAWebPageAPI200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation extractContentFromAWebPageAPI
     *
     * @param url The url for which the content will be extracted.
     * @return RequestConfig
     */
    fun extractContentFromAWebPageAPIRequestConfig(url: kotlin.String) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                put("url", listOf(url.toString()))
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/extract-content",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = true,
            body = localVariableBody
        )
    }

    /**
     * Extract Publish Date API
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * @param url The url for which the publish date should be extracted.
     * @return ExtractPublishDateAPI200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun extractPublishDateAPI(url: kotlin.String) : ExtractPublishDateAPI200Response {
        val localVarResponse = extractPublishDateAPIWithHttpInfo(url = url)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as ExtractPublishDateAPI200Response
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()} ${localVarError.body}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * Extract Publish Date API
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * @param url The url for which the publish date should be extracted.
     * @return ApiResponse<ExtractPublishDateAPI200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun extractPublishDateAPIWithHttpInfo(url: kotlin.String) : ApiResponse<ExtractPublishDateAPI200Response?> {
        val localVariableConfig = extractPublishDateAPIRequestConfig(url = url)

        return request<Unit, ExtractPublishDateAPI200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation extractPublishDateAPI
     *
     * @param url The url for which the publish date should be extracted.
     * @return RequestConfig
     */
    fun extractPublishDateAPIRequestConfig(url: kotlin.String) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                put("url", listOf(url.toString()))
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/extract-publish-date",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = true,
            body = localVariableBody
        )
    }

    /**
     * Retrieve Page Rank API
     * This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
     * @param domain The domain for which the page rank should be returned.
     * @return RetrievePageRankAPI200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun retrievePageRankAPI(domain: kotlin.String) : RetrievePageRankAPI200Response {
        val localVarResponse = retrievePageRankAPIWithHttpInfo(domain = domain)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as RetrievePageRankAPI200Response
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()} ${localVarError.body}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * Retrieve Page Rank API
     * This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
     * @param domain The domain for which the page rank should be returned.
     * @return ApiResponse<RetrievePageRankAPI200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun retrievePageRankAPIWithHttpInfo(domain: kotlin.String) : ApiResponse<RetrievePageRankAPI200Response?> {
        val localVariableConfig = retrievePageRankAPIRequestConfig(domain = domain)

        return request<Unit, RetrievePageRankAPI200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation retrievePageRankAPI
     *
     * @param domain The domain for which the page rank should be returned.
     * @return RequestConfig
     */
    fun retrievePageRankAPIRequestConfig(domain: kotlin.String) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                put("domain", listOf(domain.toString()))
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/retrieve-page-rank",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = true,
            body = localVariableBody
        )
    }

    /**
     * Search Web API
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * @param query The search query.
     * @param number The number of results to return in range [1,50] (optional)
     * @return SearchWebAPI200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun searchWebAPI(query: kotlin.String, number: kotlin.Int? = null) : SearchWebAPI200Response {
        val localVarResponse = searchWebAPIWithHttpInfo(query = query, number = number)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as SearchWebAPI200Response
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()} ${localVarError.body}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * Search Web API
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * @param query The search query.
     * @param number The number of results to return in range [1,50] (optional)
     * @return ApiResponse<SearchWebAPI200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun searchWebAPIWithHttpInfo(query: kotlin.String, number: kotlin.Int?) : ApiResponse<SearchWebAPI200Response?> {
        val localVariableConfig = searchWebAPIRequestConfig(query = query, number = number)

        return request<Unit, SearchWebAPI200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation searchWebAPI
     *
     * @param query The search query.
     * @param number The number of results to return in range [1,50] (optional)
     * @return RequestConfig
     */
    fun searchWebAPIRequestConfig(query: kotlin.String, number: kotlin.Int?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                put("query", listOf(query.toString()))
                if (number != null) {
                    put("number", listOf(number.toString()))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/search-web",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = true,
            body = localVariableBody
        )
    }

    /**
     * Verify Email Address API
     * This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
     * @param email The email address to verify.
     * @return VerifyEmailAddressAPI200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun verifyEmailAddressAPI(email: kotlin.String) : VerifyEmailAddressAPI200Response {
        val localVarResponse = verifyEmailAddressAPIWithHttpInfo(email = email)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as VerifyEmailAddressAPI200Response
            ResponseType.Informational -> throw UnsupportedOperationException("Client does not support Informational responses.")
            ResponseType.Redirection -> throw UnsupportedOperationException("Client does not support Redirection responses.")
            ResponseType.ClientError -> {
                val localVarError = localVarResponse as ClientError<*>
                throw ClientException("Client error : ${localVarError.statusCode} ${localVarError.message.orEmpty()}", localVarError.statusCode, localVarResponse)
            }
            ResponseType.ServerError -> {
                val localVarError = localVarResponse as ServerError<*>
                throw ServerException("Server error : ${localVarError.statusCode} ${localVarError.message.orEmpty()} ${localVarError.body}", localVarError.statusCode, localVarResponse)
            }
        }
    }

    /**
     * Verify Email Address API
     * This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
     * @param email The email address to verify.
     * @return ApiResponse<VerifyEmailAddressAPI200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun verifyEmailAddressAPIWithHttpInfo(email: kotlin.String) : ApiResponse<VerifyEmailAddressAPI200Response?> {
        val localVariableConfig = verifyEmailAddressAPIRequestConfig(email = email)

        return request<Unit, VerifyEmailAddressAPI200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation verifyEmailAddressAPI
     *
     * @param email The email address to verify.
     * @return RequestConfig
     */
    fun verifyEmailAddressAPIRequestConfig(email: kotlin.String) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                put("email", listOf(email.toString()))
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/verify-email",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = true,
            body = localVariableBody
        )
    }


    private fun encodeURIComponent(uriComponent: kotlin.String): kotlin.String =
        HttpUrl.Builder().scheme("http").host("localhost").addPathSegment(uriComponent).build().encodedPathSegments[0]
}
