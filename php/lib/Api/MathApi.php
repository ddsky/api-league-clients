<?php
/**
 * MathApi
 * PHP version 7.4
 *
 * @category Class
 * @package  OpenAPI\Client
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
 * OpenAPI Generator version: 7.3.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Api;

use GuzzleHttp\Client;
use GuzzleHttp\ClientInterface;
use GuzzleHttp\Exception\ConnectException;
use GuzzleHttp\Exception\RequestException;
use GuzzleHttp\Psr7\MultipartStream;
use GuzzleHttp\Psr7\Request;
use GuzzleHttp\RequestOptions;
use OpenAPI\Client\ApiException;
use OpenAPI\Client\Configuration;
use OpenAPI\Client\HeaderSelector;
use OpenAPI\Client\ObjectSerializer;

/**
 * MathApi Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */
class MathApi
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

    /** @var string[] $contentTypes **/
    public const contentTypes = [
        'convertUnits' => [
            'application/json',
        ],
    ];

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
     * Operation convertUnits
     *
     * Convert Units
     *
     * @param  float $source_amount The source amount. (required)
     * @param  string $source_unit The source unit. (required)
     * @param  string $target_unit The unit to which should be converted. (required)
     * @param  string $food_name An optional food name. For converting foods the food is relevant as they have different densities. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['convertUnits'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response or if the response body is not in the expected format
     * @throws \InvalidArgumentException
     * @return \OpenAPI\Client\Model\ConvertUnits200Response
     */
    public function convertUnits($source_amount, $source_unit, $target_unit, $food_name = null, string $contentType = self::contentTypes['convertUnits'][0])
    {
        list($response) = $this->convertUnitsWithHttpInfo($source_amount, $source_unit, $target_unit, $food_name, $contentType);
        return $response;
    }

    /**
     * Operation convertUnitsWithHttpInfo
     *
     * Convert Units
     *
     * @param  float $source_amount The source amount. (required)
     * @param  string $source_unit The source unit. (required)
     * @param  string $target_unit The unit to which should be converted. (required)
     * @param  string $food_name An optional food name. For converting foods the food is relevant as they have different densities. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['convertUnits'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response or if the response body is not in the expected format
     * @throws \InvalidArgumentException
     * @return array of \OpenAPI\Client\Model\ConvertUnits200Response, HTTP status code, HTTP response headers (array of strings)
     */
    public function convertUnitsWithHttpInfo($source_amount, $source_unit, $target_unit, $food_name = null, string $contentType = self::contentTypes['convertUnits'][0])
    {
        $request = $this->convertUnitsRequest($source_amount, $source_unit, $target_unit, $food_name, $contentType);

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
                    if ('\OpenAPI\Client\Model\ConvertUnits200Response' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('\OpenAPI\Client\Model\ConvertUnits200Response' !== 'string') {
                            try {
                                $content = json_decode($content, false, 512, JSON_THROW_ON_ERROR);
                            } catch (\JsonException $exception) {
                                throw new ApiException(
                                    sprintf(
                                        'Error JSON decoding server response (%s)',
                                        $request->getUri()
                                    ),
                                    $statusCode,
                                    $response->getHeaders(),
                                    $content
                                );
                            }
                        }
                    }

                    return [
                        ObjectSerializer::deserialize($content, '\OpenAPI\Client\Model\ConvertUnits200Response', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\OpenAPI\Client\Model\ConvertUnits200Response';
            if ($returnType === '\SplFileObject') {
                $content = $response->getBody(); //stream goes to serializer
            } else {
                $content = (string) $response->getBody();
                if ($returnType !== 'string') {
                    try {
                        $content = json_decode($content, false, 512, JSON_THROW_ON_ERROR);
                    } catch (\JsonException $exception) {
                        throw new ApiException(
                            sprintf(
                                'Error JSON decoding server response (%s)',
                                $request->getUri()
                            ),
                            $statusCode,
                            $response->getHeaders(),
                            $content
                        );
                    }
                }
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
                        '\OpenAPI\Client\Model\ConvertUnits200Response',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation convertUnitsAsync
     *
     * Convert Units
     *
     * @param  float $source_amount The source amount. (required)
     * @param  string $source_unit The source unit. (required)
     * @param  string $target_unit The unit to which should be converted. (required)
     * @param  string $food_name An optional food name. For converting foods the food is relevant as they have different densities. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['convertUnits'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function convertUnitsAsync($source_amount, $source_unit, $target_unit, $food_name = null, string $contentType = self::contentTypes['convertUnits'][0])
    {
        return $this->convertUnitsAsyncWithHttpInfo($source_amount, $source_unit, $target_unit, $food_name, $contentType)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation convertUnitsAsyncWithHttpInfo
     *
     * Convert Units
     *
     * @param  float $source_amount The source amount. (required)
     * @param  string $source_unit The source unit. (required)
     * @param  string $target_unit The unit to which should be converted. (required)
     * @param  string $food_name An optional food name. For converting foods the food is relevant as they have different densities. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['convertUnits'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function convertUnitsAsyncWithHttpInfo($source_amount, $source_unit, $target_unit, $food_name = null, string $contentType = self::contentTypes['convertUnits'][0])
    {
        $returnType = '\OpenAPI\Client\Model\ConvertUnits200Response';
        $request = $this->convertUnitsRequest($source_amount, $source_unit, $target_unit, $food_name, $contentType);

        return $this->client
            ->sendAsync($request, $this->createHttpClientOption())
            ->then(
                function ($response) use ($returnType) {
                    if ($returnType === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ($returnType !== 'string') {
                            $content = json_decode($content);
                        }
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
     * Create request for operation 'convertUnits'
     *
     * @param  float $source_amount The source amount. (required)
     * @param  string $source_unit The source unit. (required)
     * @param  string $target_unit The unit to which should be converted. (required)
     * @param  string $food_name An optional food name. For converting foods the food is relevant as they have different densities. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['convertUnits'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function convertUnitsRequest($source_amount, $source_unit, $target_unit, $food_name = null, string $contentType = self::contentTypes['convertUnits'][0])
    {

        // verify the required parameter 'source_amount' is set
        if ($source_amount === null || (is_array($source_amount) && count($source_amount) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $source_amount when calling convertUnits'
            );
        }
        if ($source_amount > 99999999) {
            throw new \InvalidArgumentException('invalid value for "$source_amount" when calling MathApi.convertUnits, must be smaller than or equal to 99999999.');
        }
        if ($source_amount < 0) {
            throw new \InvalidArgumentException('invalid value for "$source_amount" when calling MathApi.convertUnits, must be bigger than or equal to 0.');
        }
        
        // verify the required parameter 'source_unit' is set
        if ($source_unit === null || (is_array($source_unit) && count($source_unit) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $source_unit when calling convertUnits'
            );
        }
        if (strlen($source_unit) > 100) {
            throw new \InvalidArgumentException('invalid length for "$source_unit" when calling MathApi.convertUnits, must be smaller than or equal to 100.');
        }
        if (!preg_match("/./", $source_unit)) {
            throw new \InvalidArgumentException("invalid value for \"source_unit\" when calling MathApi.convertUnits, must conform to the pattern /./.");
        }
        
        // verify the required parameter 'target_unit' is set
        if ($target_unit === null || (is_array($target_unit) && count($target_unit) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $target_unit when calling convertUnits'
            );
        }
        if (strlen($target_unit) > 100) {
            throw new \InvalidArgumentException('invalid length for "$target_unit" when calling MathApi.convertUnits, must be smaller than or equal to 100.');
        }
        if (!preg_match("/./", $target_unit)) {
            throw new \InvalidArgumentException("invalid value for \"target_unit\" when calling MathApi.convertUnits, must conform to the pattern /./.");
        }
        
        if ($food_name !== null && strlen($food_name) > 200) {
            throw new \InvalidArgumentException('invalid length for "$food_name" when calling MathApi.convertUnits, must be smaller than or equal to 200.');
        }
        if ($food_name !== null && !preg_match("/./", $food_name)) {
            throw new \InvalidArgumentException("invalid value for \"food_name\" when calling MathApi.convertUnits, must conform to the pattern /./.");
        }
        

        $resourcePath = '/convert-units';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;

        // query params
        $queryParams = array_merge($queryParams, ObjectSerializer::toQueryValue(
            $source_amount,
            'source-amount', // param base name
            'number', // openApiType
            'form', // style
            false, // explode
            true // required
        ) ?? []);
        // query params
        $queryParams = array_merge($queryParams, ObjectSerializer::toQueryValue(
            $source_unit,
            'source-unit', // param base name
            'string', // openApiType
            'form', // style
            false, // explode
            true // required
        ) ?? []);
        // query params
        $queryParams = array_merge($queryParams, ObjectSerializer::toQueryValue(
            $target_unit,
            'target-unit', // param base name
            'string', // openApiType
            'form', // style
            false, // explode
            true // required
        ) ?? []);
        // query params
        $queryParams = array_merge($queryParams, ObjectSerializer::toQueryValue(
            $food_name,
            'food-name', // param base name
            'string', // openApiType
            'form', // style
            false, // explode
            false // required
        ) ?? []);




        $headers = $this->headerSelector->selectHeaders(
            ['application/json', ],
            $contentType,
            $multipart
        );

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

            } elseif (stripos($headers['Content-Type'], 'application/json') !== false) {
                # if Content-Type contains "application/json", json_encode the form parameters
                $httpBody = \GuzzleHttp\Utils::jsonEncode($formParams);
            } else {
                // for HTTP post (form)
                $httpBody = ObjectSerializer::buildQuery($formParams);
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

        $operationHost = $this->config->getHost();
        $query = ObjectSerializer::buildQuery($queryParams);
        return new Request(
            'GET',
            $operationHost . $resourcePath . ($query ? "?{$query}" : ''),
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