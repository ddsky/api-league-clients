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

import com.apileague.client.model.RandomQuote200Response
import com.apileague.client.model.RandomTrivia200Response

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

class KnowledgeApi(basePath: kotlin.String = defaultBasePath, client: OkHttpClient = ApiClient.defaultClient) : ApiClient(basePath, client) {
    companion object {
        @JvmStatic
        val defaultBasePath: String by lazy {
            System.getProperties().getProperty(ApiClient.baseUrlKey, "https://api.apileague.com")
        }
    }

    /**
     * Random Quote
     * This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
     * @param minLength The minimum length of the quote in letters. (optional)
     * @param maxLength The maximum length of the quote in letters. (optional)
     * @return RandomQuote200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun randomQuote(minLength: kotlin.Int? = null, maxLength: kotlin.Int? = null) : RandomQuote200Response {
        val localVarResponse = randomQuoteWithHttpInfo(minLength = minLength, maxLength = maxLength)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as RandomQuote200Response
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
     * Random Quote
     * This API returns a random quote from a collection of quotes. The quotes are from famous people and are in English.
     * @param minLength The minimum length of the quote in letters. (optional)
     * @param maxLength The maximum length of the quote in letters. (optional)
     * @return ApiResponse<RandomQuote200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun randomQuoteWithHttpInfo(minLength: kotlin.Int?, maxLength: kotlin.Int?) : ApiResponse<RandomQuote200Response?> {
        val localVariableConfig = randomQuoteRequestConfig(minLength = minLength, maxLength = maxLength)

        return request<Unit, RandomQuote200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation randomQuote
     *
     * @param minLength The minimum length of the quote in letters. (optional)
     * @param maxLength The maximum length of the quote in letters. (optional)
     * @return RequestConfig
     */
    fun randomQuoteRequestConfig(minLength: kotlin.Int?, maxLength: kotlin.Int?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                if (minLength != null) {
                    put("min-length", listOf(minLength.toString()))
                }
                if (maxLength != null) {
                    put("max-length", listOf(maxLength.toString()))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/retrieve-random-quote",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = true,
            body = localVariableBody
        )
    }

    /**
     * Random Trivia
     * This endpoint returns a random piece of trivia.
     * @param maxLength The maximum length of the trivia in letters. (optional)
     * @return RandomTrivia200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun randomTrivia(maxLength: kotlin.Int? = null) : RandomTrivia200Response {
        val localVarResponse = randomTriviaWithHttpInfo(maxLength = maxLength)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as RandomTrivia200Response
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
     * Random Trivia
     * This endpoint returns a random piece of trivia.
     * @param maxLength The maximum length of the trivia in letters. (optional)
     * @return ApiResponse<RandomTrivia200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun randomTriviaWithHttpInfo(maxLength: kotlin.Int?) : ApiResponse<RandomTrivia200Response?> {
        val localVariableConfig = randomTriviaRequestConfig(maxLength = maxLength)

        return request<Unit, RandomTrivia200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation randomTrivia
     *
     * @param maxLength The maximum length of the trivia in letters. (optional)
     * @return RequestConfig
     */
    fun randomTriviaRequestConfig(maxLength: kotlin.Int?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                if (maxLength != null) {
                    put("max-length", listOf(maxLength.toString()))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/retrieve-random-trivia",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = true,
            body = localVariableBody
        )
    }


    private fun encodeURIComponent(uriComponent: kotlin.String): kotlin.String =
        HttpUrl.Builder().scheme("http").host("localhost").addPathSegment(uriComponent).build().encodedPathSegments[0]
}
