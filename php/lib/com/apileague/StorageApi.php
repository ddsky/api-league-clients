<?php
/**
 * StorageApi
 * PHP version 7.3
 *
 * @category Class
 * @package  com.apileague.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */

/**
 * API League
 *
 * API League is a Hub for World Class APIs.
 *
 * The version of the OpenAPI document: 1.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 * OpenAPI Generator version: 5.4.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace com.apileague.client\com.apileague;

use GuzzleHttp\Client;
use GuzzleHttp\ClientInterface;
use GuzzleHttp\Exception\RequestException;
use GuzzleHttp\Exception\ConnectException;
use GuzzleHttp\Psr7\MultipartStream;
use GuzzleHttp\Psr7\Request;
use GuzzleHttp\RequestOptions;
use com.apileague.client\ApiException;
use com.apileague.client\Configuration;
use com.apileague.client\HeaderSelector;
use com.apileague.client\ObjectSerializer;

/**
 * StorageApi Class Doc Comment
 *
 * @category Class
 * @package  com.apileague.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */
class StorageApi
{
    /**
     * @var ClientInterface
     */
    protected $client;

    /**
     * @var Configuration
     */
    protected $config;

    /**
     * @var HeaderSelector
     */
    protected $headerSelector;

    /**
     * @var int Host index
     */
    protected $hostIndex;

    /**
     * @param ClientInterface $client
     * @param Configuration   $config
     * @param HeaderSelector  $selector
     * @param int             $hostIndex (Optional) host index to select the list of hosts if defined in the OpenAPI spec
     */
    public function __construct(
        ClientInterface $client = null,
        Configuration $config = null,
        HeaderSelector $selector = null,
        $hostIndex = 0
    ) {
        $this->client = $client ?: new Client();
        $this->config = $config ?: new Configuration();
        $this->headerSelector = $selector ?: new HeaderSelector();
        $this->hostIndex = $hostIndex;
    }

    /**
     * Set the host index
     *
     * @param int $hostIndex Host index (required)
     */
    public function setHostIndex($hostIndex): void
    {
        $this->hostIndex = $hostIndex;
    }

    /**
     * Get the host index
     *
     * @return int Host index
     */
    public function getHostIndex()
    {
        return $this->hostIndex;
    }

    /**
     * @return Configuration
     */
    public function getConfig()
    {
        return $this->config;
    }

    /**
     * Operation readKeyValueFromStore
     *
     * Read Key Value from Store
     *
     * @param  string $key The key for which the value is stored (max length 255 characters). (required)
     *
     * @throws \com.apileague.client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \com.apileague.client\com.apileague.client.model\InlineResponse20031
     */
    public function readKeyValueFromStore($key)
    {
        list($response) = $this->readKeyValueFromStoreWithHttpInfo($key);
        return $response;
    }

    /**
     * Operation readKeyValueFromStoreWithHttpInfo
     *
     * Read Key Value from Store
     *
     * @param  string $key The key for which the value is stored (max length 255 characters). (required)
     *
     * @throws \com.apileague.client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of \com.apileague.client\com.apileague.client.model\InlineResponse20031, HTTP status code, HTTP response headers (array of strings)
     */
    public function readKeyValueFromStoreWithHttpInfo($key)
    {
        $request = $this->readKeyValueFromStoreRequest($key);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            switch($statusCode) {
                case 200:
                    if ('\com.apileague.client\com.apileague.client.model\InlineResponse20031' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\com.apileague.client\com.apileague.client.model\InlineResponse20031', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\com.apileague.client\com.apileague.client.model\InlineResponse20031';
            if ($returnType === '\SplFileObject') {
                $content = $response->getBody(); //stream goes to serializer
            } else {
                $content = (string) $response->getBody();
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\com.apileague.client\com.apileague.client.model\InlineResponse20031',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation readKeyValueFromStoreAsync
     *
     * Read Key Value from Store
     *
     * @param  string $key The key for which the value is stored (max length 255 characters). (required)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function readKeyValueFromStoreAsync($key)
    {
        return $this->readKeyValueFromStoreAsyncWithHttpInfo($key)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation readKeyValueFromStoreAsyncWithHttpInfo
     *
     * Read Key Value from Store
     *
     * @param  string $key The key for which the value is stored (max length 255 characters). (required)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function readKeyValueFromStoreAsyncWithHttpInfo($key)
    {
        $returnType = '\com.apileague.client\com.apileague.client.model\InlineResponse20031';
        $request = $this->readKeyValueFromStoreRequest($key);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    if ($returnType === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'readKeyValueFromStore'
     *
     * @param  string $key The key for which the value is stored (max length 255 characters). (required)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function readKeyValueFromStoreRequest($key)
    {
        // verify the required parameter 'key' is set
        if ($key === null || (is_array($key) && count($key) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $key when calling readKeyValueFromStore'
            );
        }
        if (strlen($key) > 255) {
            throw new \InvalidArgumentException('invalid length for "$key" when calling StorageApi.readKeyValueFromStore, must be smaller than or equal to 255.');
        }
        if (!preg_match("/./", $key)) {
            throw new \InvalidArgumentException("invalid value for \"key\" when calling StorageApi.readKeyValueFromStore, must conform to the pattern /./.");
        }


        $resourcePath = '/read-key-value';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;

        // query params
        if (is_array($key)) {
            $key = ObjectSerializer::serializeCollection($key, 'form', true);
        }
        if ($key !== null) {
            $queryParams['key'] = $key;
        }




        if ($multipart) {
            $headers = $this->headerSelector->selectHeadersForMultipart(
                ['application/json']
            );
        } else {
            $headers = $this->headerSelector->selectHeaders(
                ['application/json'],
                []
            );
        }

        // for model (json/xml)
        if (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif ($headers['Content-Type'] === 'application/json') {
                $httpBody = \GuzzleHttp\json_encode($formParams);

            } else {
                // for HTTP post (form)
                $httpBody = \GuzzleHttp\Psr7\Query::build($formParams);
            }
        }

        // this endpoint requires API key authentication
        $apiKey = $this->config->getApiKeyWithPrefix('api-key');
        if ($apiKey !== null) {
            $queryParams['api-key'] = $apiKey;
        }
        // this endpoint requires API key authentication
        $apiKey = $this->config->getApiKeyWithPrefix('x-api-key');
        if ($apiKey !== null) {
            $headers['x-api-key'] = $apiKey;
        }

        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $query = \GuzzleHttp\Psr7\Query::build($queryParams);
        return new Request(
            'GET',
            $this->config->getHost() . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Operation storeKeyValueGET
     *
     * Store Key Value (GET)
     *
     * @param  string $key The key for which the value is stored (max length 255 characters). (required)
     * @param  string $value The value that is supposed to be stored (max length 10,000 characters). (required)
     *
     * @throws \com.apileague.client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return \com.apileague.client\com.apileague.client.model\InlineResponse20032
     */
    public function storeKeyValueGET($key, $value)
    {
        list($response) = $this->storeKeyValueGETWithHttpInfo($key, $value);
        return $response;
    }

    /**
     * Operation storeKeyValueGETWithHttpInfo
     *
     * Store Key Value (GET)
     *
     * @param  string $key The key for which the value is stored (max length 255 characters). (required)
     * @param  string $value The value that is supposed to be stored (max length 10,000 characters). (required)
     *
     * @throws \com.apileague.client\ApiException on non-2xx response
     * @throws \InvalidArgumentException
     * @return array of \com.apileague.client\com.apileague.client.model\InlineResponse20032, HTTP status code, HTTP response headers (array of strings)
     */
    public function storeKeyValueGETWithHttpInfo($key, $value)
    {
        $request = $this->storeKeyValueGETRequest($key, $value);

        try {
            $options = $this->createHttpClientOption();
            try {
                $response = $this->client->send($request, $options);
            } catch (RequestException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    $e->getResponse() ? $e->getResponse()->getHeaders() : null,
                    $e->getResponse() ? (string) $e->getResponse()->getBody() : null
                );
            } catch (ConnectException $e) {
                throw new ApiException(
                    "[{$e->getCode()}] {$e->getMessage()}",
                    (int) $e->getCode(),
                    null,
                    null
                );
            }

            $statusCode = $response->getStatusCode();

            if ($statusCode < 200 || $statusCode > 299) {
                throw new ApiException(
                    sprintf(
                        '[%d] Error connecting to the API (%s)',
                        $statusCode,
                        (string) $request->getUri()
                    ),
                    $statusCode,
                    $response->getHeaders(),
                    (string) $response->getBody()
                );
            }

            switch($statusCode) {
                case 200:
                    if ('\com.apileague.client\com.apileague.client.model\InlineResponse20032' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\com.apileague.client\com.apileague.client.model\InlineResponse20032', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\com.apileague.client\com.apileague.client.model\InlineResponse20032';
            if ($returnType === '\SplFileObject') {
                $content = $response->getBody(); //stream goes to serializer
            } else {
                $content = (string) $response->getBody();
            }

            return [
                ObjectSerializer::deserialize($content, $returnType, []),
                $response->getStatusCode(),
                $response->getHeaders()
            ];

        } catch (ApiException $e) {
            switch ($e->getCode()) {
                case 200:
                    $data = ObjectSerializer::deserialize(
                        $e->getResponseBody(),
                        '\com.apileague.client\com.apileague.client.model\InlineResponse20032',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation storeKeyValueGETAsync
     *
     * Store Key Value (GET)
     *
     * @param  string $key The key for which the value is stored (max length 255 characters). (required)
     * @param  string $value The value that is supposed to be stored (max length 10,000 characters). (required)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function storeKeyValueGETAsync($key, $value)
    {
        return $this->storeKeyValueGETAsyncWithHttpInfo($key, $value)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation storeKeyValueGETAsyncWithHttpInfo
     *
     * Store Key Value (GET)
     *
     * @param  string $key The key for which the value is stored (max length 255 characters). (required)
     * @param  string $value The value that is supposed to be stored (max length 10,000 characters). (required)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function storeKeyValueGETAsyncWithHttpInfo($key, $value)
    {
        $returnType = '\com.apileague.client\com.apileague.client.model\InlineResponse20032';
        $request = $this->storeKeyValueGETRequest($key, $value);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    if ($returnType === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                    }

                    return [
                        ObjectSerializer::deserialize($content, $returnType, []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
                },
                function ($exception) {
                    $response = $exception->getResponse();
                    $statusCode = $response->getStatusCode();
                    throw new ApiException(
                        sprintf(
                            '[%d] Error connecting to the API (%s)',
                            $statusCode,
                            $exception->getRequest()->getUri()
                        ),
                        $statusCode,
                        $response->getHeaders(),
                        (string) $response->getBody()
                    );
                }
            );
    }

    /**
     * Create request for operation 'storeKeyValueGET'
     *
     * @param  string $key The key for which the value is stored (max length 255 characters). (required)
     * @param  string $value The value that is supposed to be stored (max length 10,000 characters). (required)
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function storeKeyValueGETRequest($key, $value)
    {
        // verify the required parameter 'key' is set
        if ($key === null || (is_array($key) && count($key) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $key when calling storeKeyValueGET'
            );
        }
        if (strlen($key) > 255) {
            throw new \InvalidArgumentException('invalid length for "$key" when calling StorageApi.storeKeyValueGET, must be smaller than or equal to 255.');
        }
        if (!preg_match("/./", $key)) {
            throw new \InvalidArgumentException("invalid value for \"key\" when calling StorageApi.storeKeyValueGET, must conform to the pattern /./.");
        }

        // verify the required parameter 'value' is set
        if ($value === null || (is_array($value) && count($value) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $value when calling storeKeyValueGET'
            );
        }
        if (strlen($value) > 10000) {
            throw new \InvalidArgumentException('invalid length for "$value" when calling StorageApi.storeKeyValueGET, must be smaller than or equal to 10000.');
        }
        if (!preg_match("/./", $value)) {
            throw new \InvalidArgumentException("invalid value for \"value\" when calling StorageApi.storeKeyValueGET, must conform to the pattern /./.");
        }


        $resourcePath = '/store-key-value';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;

        // query params
        if (is_array($key)) {
            $key = ObjectSerializer::serializeCollection($key, 'form', true);
        }
        if ($key !== null) {
            $queryParams['key'] = $key;
        }
        // query params
        if (is_array($value)) {
            $value = ObjectSerializer::serializeCollection($value, 'form', true);
        }
        if ($value !== null) {
            $queryParams['value'] = $value;
        }




        if ($multipart) {
            $headers = $this->headerSelector->selectHeadersForMultipart(
                ['application/json']
            );
        } else {
            $headers = $this->headerSelector->selectHeaders(
                ['application/json'],
                []
            );
        }

        // for model (json/xml)
        if (count($formParams) > 0) {
            if ($multipart) {
                $multipartContents = [];
                foreach ($formParams as $formParamName => $formParamValue) {
                    $formParamValueItems = is_array($formParamValue) ? $formParamValue : [$formParamValue];
                    foreach ($formParamValueItems as $formParamValueItem) {
                        $multipartContents[] = [
                            'name' => $formParamName,
                            'contents' => $formParamValueItem
                        ];
                    }
                }
                // for HTTP post (form)
                $httpBody = new MultipartStream($multipartContents);

            } elseif ($headers['Content-Type'] === 'application/json') {
                $httpBody = \GuzzleHttp\json_encode($formParams);

            } else {
                // for HTTP post (form)
                $httpBody = \GuzzleHttp\Psr7\Query::build($formParams);
            }
        }

        // this endpoint requires API key authentication
        $apiKey = $this->config->getApiKeyWithPrefix('api-key');
        if ($apiKey !== null) {
            $queryParams['api-key'] = $apiKey;
        }
        // this endpoint requires API key authentication
        $apiKey = $this->config->getApiKeyWithPrefix('x-api-key');
        if ($apiKey !== null) {
            $headers['x-api-key'] = $apiKey;
        }

        $defaultHeaders = [];
        if ($this->config->getUserAgent()) {
            $defaultHeaders['User-Agent'] = $this->config->getUserAgent();
        }

        $headers = array_merge(
            $defaultHeaders,
            $headerParams,
            $headers
        );

        $query = \GuzzleHttp\Psr7\Query::build($queryParams);
        return new Request(
            'GET',
            $this->config->getHost() . $resourcePath . ($query ? "?{$query}" : ''),
            $headers,
            $httpBody
        );
    }

    /**
     * Create http client option
     *
     * @throws \RuntimeException on file opening failure
     * @return array of http client options
     */
    protected function createHttpClientOption()
    {
        $options = [];
        if ($this->config->getDebug()) {
            $options[RequestOptions::DEBUG] = fopen($this->config->getDebugFile(), 'a');
            if (!$options[RequestOptions::DEBUG]) {
                throw new \RuntimeException('Failed to open the debug file: ' . $this->config->getDebugFile());
            }
        }

        return $options;
    }
}
