<?php
/**
 * ArtApi
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
 * The version of the OpenAPI document: 1.6.4
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 * Generator version: 7.8.0-SNAPSHOT
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
 * ArtApi Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 */
class ArtApi
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
        'imageToAsciiArtByURLAPI' => [
            'application/json',
        ],
        'randomPoemAPI' => [
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
     * Operation imageToAsciiArtByURLAPI
     *
     * Image to Ascii Art by URL API
     *
     * @param  string $url The URL to the image. (required)
     * @param  int $width The maximum width of the image (default 400, max. 500). (optional)
     * @param  int $height The maximum height of the image (default 400, max. 500). (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['imageToAsciiArtByURLAPI'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response or if the response body is not in the expected format
     * @throws \InvalidArgumentException
     * @return string
     */
    public function imageToAsciiArtByURLAPI($url, $width = null, $height = null, string $contentType = self::contentTypes['imageToAsciiArtByURLAPI'][0])
    {
        list($response) = $this->imageToAsciiArtByURLAPIWithHttpInfo($url, $width, $height, $contentType);
        return $response;
    }

    /**
     * Operation imageToAsciiArtByURLAPIWithHttpInfo
     *
     * Image to Ascii Art by URL API
     *
     * @param  string $url The URL to the image. (required)
     * @param  int $width The maximum width of the image (default 400, max. 500). (optional)
     * @param  int $height The maximum height of the image (default 400, max. 500). (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['imageToAsciiArtByURLAPI'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response or if the response body is not in the expected format
     * @throws \InvalidArgumentException
     * @return array of string, HTTP status code, HTTP response headers (array of strings)
     */
    public function imageToAsciiArtByURLAPIWithHttpInfo($url, $width = null, $height = null, string $contentType = self::contentTypes['imageToAsciiArtByURLAPI'][0])
    {
        $request = $this->imageToAsciiArtByURLAPIRequest($url, $width, $height, $contentType);

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
                    if ('string' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('string' !== 'string') {
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
                        ObjectSerializer::deserialize($content, 'string', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = 'string';
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
                        'string',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation imageToAsciiArtByURLAPIAsync
     *
     * Image to Ascii Art by URL API
     *
     * @param  string $url The URL to the image. (required)
     * @param  int $width The maximum width of the image (default 400, max. 500). (optional)
     * @param  int $height The maximum height of the image (default 400, max. 500). (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['imageToAsciiArtByURLAPI'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function imageToAsciiArtByURLAPIAsync($url, $width = null, $height = null, string $contentType = self::contentTypes['imageToAsciiArtByURLAPI'][0])
    {
        return $this->imageToAsciiArtByURLAPIAsyncWithHttpInfo($url, $width, $height, $contentType)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation imageToAsciiArtByURLAPIAsyncWithHttpInfo
     *
     * Image to Ascii Art by URL API
     *
     * @param  string $url The URL to the image. (required)
     * @param  int $width The maximum width of the image (default 400, max. 500). (optional)
     * @param  int $height The maximum height of the image (default 400, max. 500). (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['imageToAsciiArtByURLAPI'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function imageToAsciiArtByURLAPIAsyncWithHttpInfo($url, $width = null, $height = null, string $contentType = self::contentTypes['imageToAsciiArtByURLAPI'][0])
    {
        $returnType = 'string';
        $request = $this->imageToAsciiArtByURLAPIRequest($url, $width, $height, $contentType);

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
     * Create request for operation 'imageToAsciiArtByURLAPI'
     *
     * @param  string $url The URL to the image. (required)
     * @param  int $width The maximum width of the image (default 400, max. 500). (optional)
     * @param  int $height The maximum height of the image (default 400, max. 500). (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['imageToAsciiArtByURLAPI'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function imageToAsciiArtByURLAPIRequest($url, $width = null, $height = null, string $contentType = self::contentTypes['imageToAsciiArtByURLAPI'][0])
    {

        // verify the required parameter 'url' is set
        if ($url === null || (is_array($url) && count($url) === 0)) {
            throw new \InvalidArgumentException(
                'Missing the required parameter $url when calling imageToAsciiArtByURLAPI'
            );
        }
        if (strlen($url) > 1000) {
            throw new \InvalidArgumentException('invalid length for "$url" when calling ArtApi.imageToAsciiArtByURLAPI, must be smaller than or equal to 1000.');
        }
        if (!preg_match("/./", $url)) {
            throw new \InvalidArgumentException("invalid value for \"url\" when calling ArtApi.imageToAsciiArtByURLAPI, must conform to the pattern /./.");
        }
        
        if ($width !== null && $width > 500) {
            throw new \InvalidArgumentException('invalid value for "$width" when calling ArtApi.imageToAsciiArtByURLAPI, must be smaller than or equal to 500.');
        }
        if ($width !== null && $width < 1) {
            throw new \InvalidArgumentException('invalid value for "$width" when calling ArtApi.imageToAsciiArtByURLAPI, must be bigger than or equal to 1.');
        }
        
        if ($height !== null && $height > 500) {
            throw new \InvalidArgumentException('invalid value for "$height" when calling ArtApi.imageToAsciiArtByURLAPI, must be smaller than or equal to 500.');
        }
        if ($height !== null && $height < 1) {
            throw new \InvalidArgumentException('invalid value for "$height" when calling ArtApi.imageToAsciiArtByURLAPI, must be bigger than or equal to 1.');
        }
        

        $resourcePath = '/convert-image-to-ascii-txt';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;

        // query params
        $queryParams = array_merge($queryParams, ObjectSerializer::toQueryValue(
            $url,
            'url', // param base name
            'string', // openApiType
            'form', // style
            false, // explode
            true // required
        ) ?? []);
        // query params
        $queryParams = array_merge($queryParams, ObjectSerializer::toQueryValue(
            $width,
            'width', // param base name
            'integer', // openApiType
            'form', // style
            false, // explode
            false // required
        ) ?? []);
        // query params
        $queryParams = array_merge($queryParams, ObjectSerializer::toQueryValue(
            $height,
            'height', // param base name
            'integer', // openApiType
            'form', // style
            false, // explode
            false // required
        ) ?? []);




        $headers = $this->headerSelector->selectHeaders(
            ['text/plain', ],
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
     * Operation randomPoemAPI
     *
     * Random Poem API
     *
     * @param  int $min_lines The minimum number of lines of the poem. (optional)
     * @param  int $max_lines The maximum number of lines of the poem. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['randomPoemAPI'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response or if the response body is not in the expected format
     * @throws \InvalidArgumentException
     * @return \OpenAPI\Client\Model\RandomPoemAPI200Response
     */
    public function randomPoemAPI($min_lines = null, $max_lines = null, string $contentType = self::contentTypes['randomPoemAPI'][0])
    {
        list($response) = $this->randomPoemAPIWithHttpInfo($min_lines, $max_lines, $contentType);
        return $response;
    }

    /**
     * Operation randomPoemAPIWithHttpInfo
     *
     * Random Poem API
     *
     * @param  int $min_lines The minimum number of lines of the poem. (optional)
     * @param  int $max_lines The maximum number of lines of the poem. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['randomPoemAPI'] to see the possible values for this operation
     *
     * @throws \OpenAPI\Client\ApiException on non-2xx response or if the response body is not in the expected format
     * @throws \InvalidArgumentException
     * @return array of \OpenAPI\Client\Model\RandomPoemAPI200Response, HTTP status code, HTTP response headers (array of strings)
     */
    public function randomPoemAPIWithHttpInfo($min_lines = null, $max_lines = null, string $contentType = self::contentTypes['randomPoemAPI'][0])
    {
        $request = $this->randomPoemAPIRequest($min_lines, $max_lines, $contentType);

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
                    if ('\OpenAPI\Client\Model\RandomPoemAPI200Response' === '\SplFileObject') {
                        $content = $response->getBody(); //stream goes to serializer
                    } else {
                        $content = (string) $response->getBody();
                        if ('\OpenAPI\Client\Model\RandomPoemAPI200Response' !== 'string') {
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
                        ObjectSerializer::deserialize($content, '\OpenAPI\Client\Model\RandomPoemAPI200Response', []),
                        $response->getStatusCode(),
                        $response->getHeaders()
                    ];
            }

            $returnType = '\OpenAPI\Client\Model\RandomPoemAPI200Response';
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
                        '\OpenAPI\Client\Model\RandomPoemAPI200Response',
                        $e->getResponseHeaders()
                    );
                    $e->setResponseObject($data);
                    break;
            }
            throw $e;
        }
    }

    /**
     * Operation randomPoemAPIAsync
     *
     * Random Poem API
     *
     * @param  int $min_lines The minimum number of lines of the poem. (optional)
     * @param  int $max_lines The maximum number of lines of the poem. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['randomPoemAPI'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function randomPoemAPIAsync($min_lines = null, $max_lines = null, string $contentType = self::contentTypes['randomPoemAPI'][0])
    {
        return $this->randomPoemAPIAsyncWithHttpInfo($min_lines, $max_lines, $contentType)
            ->then(
                function ($response) {
                    return $response[0];
                }
            );
    }

    /**
     * Operation randomPoemAPIAsyncWithHttpInfo
     *
     * Random Poem API
     *
     * @param  int $min_lines The minimum number of lines of the poem. (optional)
     * @param  int $max_lines The maximum number of lines of the poem. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['randomPoemAPI'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Promise\PromiseInterface
     */
    public function randomPoemAPIAsyncWithHttpInfo($min_lines = null, $max_lines = null, string $contentType = self::contentTypes['randomPoemAPI'][0])
    {
        $returnType = '\OpenAPI\Client\Model\RandomPoemAPI200Response';
        $request = $this->randomPoemAPIRequest($min_lines, $max_lines, $contentType);

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
     * Create request for operation 'randomPoemAPI'
     *
     * @param  int $min_lines The minimum number of lines of the poem. (optional)
     * @param  int $max_lines The maximum number of lines of the poem. (optional)
     * @param  string $contentType The value for the Content-Type header. Check self::contentTypes['randomPoemAPI'] to see the possible values for this operation
     *
     * @throws \InvalidArgumentException
     * @return \GuzzleHttp\Psr7\Request
     */
    public function randomPoemAPIRequest($min_lines = null, $max_lines = null, string $contentType = self::contentTypes['randomPoemAPI'][0])
    {

        if ($min_lines !== null && $min_lines > 1000) {
            throw new \InvalidArgumentException('invalid value for "$min_lines" when calling ArtApi.randomPoemAPI, must be smaller than or equal to 1000.');
        }
        if ($min_lines !== null && $min_lines < 0) {
            throw new \InvalidArgumentException('invalid value for "$min_lines" when calling ArtApi.randomPoemAPI, must be bigger than or equal to 0.');
        }
        
        if ($max_lines !== null && $max_lines > 1000) {
            throw new \InvalidArgumentException('invalid value for "$max_lines" when calling ArtApi.randomPoemAPI, must be smaller than or equal to 1000.');
        }
        if ($max_lines !== null && $max_lines < 0) {
            throw new \InvalidArgumentException('invalid value for "$max_lines" when calling ArtApi.randomPoemAPI, must be bigger than or equal to 0.');
        }
        

        $resourcePath = '/retrieve-random-poem';
        $formParams = [];
        $queryParams = [];
        $headerParams = [];
        $httpBody = '';
        $multipart = false;

        // query params
        $queryParams = array_merge($queryParams, ObjectSerializer::toQueryValue(
            $min_lines,
            'min-lines', // param base name
            'integer', // openApiType
            'form', // style
            false, // explode
            false // required
        ) ?? []);
        // query params
        $queryParams = array_merge($queryParams, ObjectSerializer::toQueryValue(
            $max_lines,
            'max-lines', // param base name
            'integer', // openApiType
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
