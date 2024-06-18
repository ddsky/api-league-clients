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

import com.apileague.client.model.ExtractAuthors200Response
import com.apileague.client.model.ExtractContentFromAWebPage200Response
import com.apileague.client.model.ExtractPublishDate200Response
import com.apileague.client.model.RetrievePageRank200Response
import com.apileague.client.model.SearchWeb200Response
import com.apileague.client.model.VerifyEmailAddress200Response

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
     * Extract Authors
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * @param url The url with the article from which authors should be extracted.
     * @return ExtractAuthors200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun extractAuthors(url: kotlin.String) : ExtractAuthors200Response {
        val localVarResponse = extractAuthorsWithHttpInfo(url = url)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as ExtractAuthors200Response
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
     * Extract Authors
     * Extracts the authors from a given URL. This API is useful for extracting the authors from a blog post or news article. The API will return a list of authors with their names and links to their profiles if available.
     * @param url The url with the article from which authors should be extracted.
     * @return ApiResponse<ExtractAuthors200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun extractAuthorsWithHttpInfo(url: kotlin.String) : ApiResponse<ExtractAuthors200Response?> {
        val localVariableConfig = extractAuthorsRequestConfig(url = url)

        return request<Unit, ExtractAuthors200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation extractAuthors
     *
     * @param url The url with the article from which authors should be extracted.
     * @return RequestConfig
     */
    fun extractAuthorsRequestConfig(url: kotlin.String) : RequestConfig<Unit> {
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
     * Extract Content from a Web Page
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * @param url The url for which the content will be extracted.
     * @return ExtractContentFromAWebPage200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun extractContentFromAWebPage(url: kotlin.String) : ExtractContentFromAWebPage200Response {
        val localVarResponse = extractContentFromAWebPageWithHttpInfo(url = url)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as ExtractContentFromAWebPage200Response
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
     * Extract Content from a Web Page
     * Extract the main content from a web page. This API is useful for extracting the main text, title, and images from a web page. It can be used to create a summary of the content of a web page, or to extract the main content of a web page to display it in a different format.
     * @param url The url for which the content will be extracted.
     * @return ApiResponse<ExtractContentFromAWebPage200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun extractContentFromAWebPageWithHttpInfo(url: kotlin.String) : ApiResponse<ExtractContentFromAWebPage200Response?> {
        val localVariableConfig = extractContentFromAWebPageRequestConfig(url = url)

        return request<Unit, ExtractContentFromAWebPage200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation extractContentFromAWebPage
     *
     * @param url The url for which the content will be extracted.
     * @return RequestConfig
     */
    fun extractContentFromAWebPageRequestConfig(url: kotlin.String) : RequestConfig<Unit> {
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
     * Extract Publish Date
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * @param url The url for which the publish date should be extracted.
     * @return ExtractPublishDate200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun extractPublishDate(url: kotlin.String) : ExtractPublishDate200Response {
        val localVarResponse = extractPublishDateWithHttpInfo(url = url)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as ExtractPublishDate200Response
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
     * Extract Publish Date
     * Extract the publish date of an article (news or blog). The API will return the publish date of the article if it can be found. The date returned is in the format YYYY-MM-DD.
     * @param url The url for which the publish date should be extracted.
     * @return ApiResponse<ExtractPublishDate200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun extractPublishDateWithHttpInfo(url: kotlin.String) : ApiResponse<ExtractPublishDate200Response?> {
        val localVariableConfig = extractPublishDateRequestConfig(url = url)

        return request<Unit, ExtractPublishDate200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation extractPublishDate
     *
     * @param url The url for which the publish date should be extracted.
     * @return RequestConfig
     */
    fun extractPublishDateRequestConfig(url: kotlin.String) : RequestConfig<Unit> {
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
     * Retrieve Page Rank
     * This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
     * @param domain The domain for which the page rank should be returned.
     * @return RetrievePageRank200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun retrievePageRank(domain: kotlin.String) : RetrievePageRank200Response {
        val localVarResponse = retrievePageRankWithHttpInfo(domain = domain)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as RetrievePageRank200Response
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
     * Retrieve Page Rank
     * This API allows you to retrieve the page rank of a given URL. The API returns the page rank, the position of the URL in the search results, and the percentile of the page rank.
     * @param domain The domain for which the page rank should be returned.
     * @return ApiResponse<RetrievePageRank200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun retrievePageRankWithHttpInfo(domain: kotlin.String) : ApiResponse<RetrievePageRank200Response?> {
        val localVariableConfig = retrievePageRankRequestConfig(domain = domain)

        return request<Unit, RetrievePageRank200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation retrievePageRank
     *
     * @param domain The domain for which the page rank should be returned.
     * @return RequestConfig
     */
    fun retrievePageRankRequestConfig(domain: kotlin.String) : RequestConfig<Unit> {
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
     * Search Web
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * @param query The search query.
     * @param number The number of results to return in range [1,50] (optional)
     * @return SearchWeb200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun searchWeb(query: kotlin.String, number: kotlin.Int? = null) : SearchWeb200Response {
        val localVarResponse = searchWebWithHttpInfo(query = query, number = number)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as SearchWeb200Response
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
     * Search Web
     * Search the web for a given query. The API returns a list of results with the title, summary, and URL.
     * @param query The search query.
     * @param number The number of results to return in range [1,50] (optional)
     * @return ApiResponse<SearchWeb200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun searchWebWithHttpInfo(query: kotlin.String, number: kotlin.Int?) : ApiResponse<SearchWeb200Response?> {
        val localVariableConfig = searchWebRequestConfig(query = query, number = number)

        return request<Unit, SearchWeb200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation searchWeb
     *
     * @param query The search query.
     * @param number The number of results to return in range [1,50] (optional)
     * @return RequestConfig
     */
    fun searchWebRequestConfig(query: kotlin.String, number: kotlin.Int?) : RequestConfig<Unit> {
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
     * Verify Email Address
     * This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
     * @param email The email address to verify.
     * @return VerifyEmailAddress200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun verifyEmailAddress(email: kotlin.String) : VerifyEmailAddress200Response {
        val localVarResponse = verifyEmailAddressWithHttpInfo(email = email)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as VerifyEmailAddress200Response
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
     * Verify Email Address
     * This email checker API allows you to validate an email address. The validation will parse the name if possible and check whether the email is not just a disposable junk email address. The API will also check if the email is from a free provider like Gmail, Yahoo, or Hotmail.
     * @param email The email address to verify.
     * @return ApiResponse<VerifyEmailAddress200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun verifyEmailAddressWithHttpInfo(email: kotlin.String) : ApiResponse<VerifyEmailAddress200Response?> {
        val localVariableConfig = verifyEmailAddressRequestConfig(email = email)

        return request<Unit, VerifyEmailAddress200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation verifyEmailAddress
     *
     * @param email The email address to verify.
     * @return RequestConfig
     */
    fun verifyEmailAddressRequestConfig(email: kotlin.String) : RequestConfig<Unit> {
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
