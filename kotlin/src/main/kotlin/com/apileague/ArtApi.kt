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

import com.apileague.client.model.RandomPoem200Response

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

class ArtApi(basePath: kotlin.String = defaultBasePath, client: OkHttpClient = ApiClient.defaultClient) : ApiClient(basePath, client) {
    companion object {
        @JvmStatic
        val defaultBasePath: String by lazy {
            System.getProperties().getProperty(ApiClient.baseUrlKey, "https://api.apileague.com")
        }
    }

    /**
     * Image to Ascii Art by URL
     * Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
     * @param url The URL to the image.
     * @param width The maximum width of the image (default 400, max. 500). (optional)
     * @param height The maximum height of the image (default 400, max. 500). (optional)
     * @return kotlin.String
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun imageToAsciiArtByURL(url: kotlin.String, width: kotlin.Int? = null, height: kotlin.Int? = null) : kotlin.String {
        val localVarResponse = imageToAsciiArtByURLWithHttpInfo(url = url, width = width, height = height)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as kotlin.String
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
     * Image to Ascii Art by URL
     * Convert an image to ASCII art. You can pass the image URL as a query parameter. The API returns the ASCII art as plain text. This endpoint is using the GET method and an image URL as a query parameter.
     * @param url The URL to the image.
     * @param width The maximum width of the image (default 400, max. 500). (optional)
     * @param height The maximum height of the image (default 400, max. 500). (optional)
     * @return ApiResponse<kotlin.String?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun imageToAsciiArtByURLWithHttpInfo(url: kotlin.String, width: kotlin.Int?, height: kotlin.Int?) : ApiResponse<kotlin.String?> {
        val localVariableConfig = imageToAsciiArtByURLRequestConfig(url = url, width = width, height = height)

        return request<Unit, kotlin.String>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation imageToAsciiArtByURL
     *
     * @param url The URL to the image.
     * @param width The maximum width of the image (default 400, max. 500). (optional)
     * @param height The maximum height of the image (default 400, max. 500). (optional)
     * @return RequestConfig
     */
    fun imageToAsciiArtByURLRequestConfig(url: kotlin.String, width: kotlin.Int?, height: kotlin.Int?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                put("url", listOf(url.toString()))
                if (width != null) {
                    put("width", listOf(width.toString()))
                }
                if (height != null) {
                    put("height", listOf(height.toString()))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        
        return RequestConfig(
            method = RequestMethod.GET,
            path = "/convert-image-to-ascii-txt",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = true,
            body = localVariableBody
        )
    }

    /**
     * Random Poem
     * Retrieve a random poem by many famous authors. You can filter poem&#39;s by length (number of lines).
     * @param minLines The minimum number of lines of the poem. (optional)
     * @param maxLines The maximum number of lines of the poem. (optional)
     * @return RandomPoem200Response
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     * @throws UnsupportedOperationException If the API returns an informational or redirection response
     * @throws ClientException If the API returns a client error response
     * @throws ServerException If the API returns a server error response
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class, UnsupportedOperationException::class, ClientException::class, ServerException::class)
    fun randomPoem(minLines: kotlin.Int? = null, maxLines: kotlin.Int? = null) : RandomPoem200Response {
        val localVarResponse = randomPoemWithHttpInfo(minLines = minLines, maxLines = maxLines)

        return when (localVarResponse.responseType) {
            ResponseType.Success -> (localVarResponse as Success<*>).data as RandomPoem200Response
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
     * Random Poem
     * Retrieve a random poem by many famous authors. You can filter poem&#39;s by length (number of lines).
     * @param minLines The minimum number of lines of the poem. (optional)
     * @param maxLines The maximum number of lines of the poem. (optional)
     * @return ApiResponse<RandomPoem200Response?>
     * @throws IllegalStateException If the request is not correctly configured
     * @throws IOException Rethrows the OkHttp execute method exception
     */
    @Suppress("UNCHECKED_CAST")
    @Throws(IllegalStateException::class, IOException::class)
    fun randomPoemWithHttpInfo(minLines: kotlin.Int?, maxLines: kotlin.Int?) : ApiResponse<RandomPoem200Response?> {
        val localVariableConfig = randomPoemRequestConfig(minLines = minLines, maxLines = maxLines)

        return request<Unit, RandomPoem200Response>(
            localVariableConfig
        )
    }

    /**
     * To obtain the request config of the operation randomPoem
     *
     * @param minLines The minimum number of lines of the poem. (optional)
     * @param maxLines The maximum number of lines of the poem. (optional)
     * @return RequestConfig
     */
    fun randomPoemRequestConfig(minLines: kotlin.Int?, maxLines: kotlin.Int?) : RequestConfig<Unit> {
        val localVariableBody = null
        val localVariableQuery: MultiValueMap = mutableMapOf<kotlin.String, kotlin.collections.List<kotlin.String>>()
            .apply {
                if (minLines != null) {
                    put("min-lines", listOf(minLines.toString()))
                }
                if (maxLines != null) {
                    put("max-lines", listOf(maxLines.toString()))
                }
            }
        val localVariableHeaders: MutableMap<String, String> = mutableMapOf()
        localVariableHeaders["Accept"] = "application/json"

        return RequestConfig(
            method = RequestMethod.GET,
            path = "/retrieve-random-poem",
            query = localVariableQuery,
            headers = localVariableHeaders,
            requiresAuthentication = true,
            body = localVariableBody
        )
    }


    private fun encodeURIComponent(uriComponent: kotlin.String): kotlin.String =
        HttpUrl.Builder().scheme("http").host("localhost").addPathSegment(uriComponent).build().encodedPathSegments[0]
}
