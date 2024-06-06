<?php
/**
 * ScoreText200Response
 *
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
 * The version of the OpenAPI document: 1.2.0
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 * Generator version: 7.5.0
 */

/**
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */

namespace OpenAPI\Client\Model;

use \ArrayAccess;
use \OpenAPI\Client\ObjectSerializer;

/**
 * ScoreText200Response Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class ScoreText200Response implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'scoreText_200_response';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'number_of_words' => 'int',
        'number_of_sentences' => 'int',
        'readability' => '\OpenAPI\Client\Model\ScoreText200ResponseReadability',
        'skimmability' => '\OpenAPI\Client\Model\ScoreText200ResponseSkimmability',
        'interestingness' => '\OpenAPI\Client\Model\ScoreText200ResponseInterestingness',
        'style' => '\OpenAPI\Client\Model\ScoreText200ResponseStyle',
        'total_score' => 'float'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'number_of_words' => null,
        'number_of_sentences' => null,
        'readability' => null,
        'skimmability' => null,
        'interestingness' => null,
        'style' => null,
        'total_score' => null
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'number_of_words' => false,
        'number_of_sentences' => false,
        'readability' => false,
        'skimmability' => false,
        'interestingness' => false,
        'style' => false,
        'total_score' => false
    ];

    /**
      * If a nullable field gets set to null, insert it here
      *
      * @var boolean[]
      */
    protected array $openAPINullablesSetToNull = [];

    /**
     * Array of property to type mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPITypes()
    {
        return self::$openAPITypes;
    }

    /**
     * Array of property to format mappings. Used for (de)serialization
     *
     * @return array
     */
    public static function openAPIFormats()
    {
        return self::$openAPIFormats;
    }

    /**
     * Array of nullable properties
     *
     * @return array
     */
    protected static function openAPINullables(): array
    {
        return self::$openAPINullables;
    }

    /**
     * Array of nullable field names deliberately set to null
     *
     * @return boolean[]
     */
    private function getOpenAPINullablesSetToNull(): array
    {
        return $this->openAPINullablesSetToNull;
    }

    /**
     * Setter - Array of nullable field names deliberately set to null
     *
     * @param boolean[] $openAPINullablesSetToNull
     */
    private function setOpenAPINullablesSetToNull(array $openAPINullablesSetToNull): void
    {
        $this->openAPINullablesSetToNull = $openAPINullablesSetToNull;
    }

    /**
     * Checks if a property is nullable
     *
     * @param string $property
     * @return bool
     */
    public static function isNullable(string $property): bool
    {
        return self::openAPINullables()[$property] ?? false;
    }

    /**
     * Checks if a nullable property is set to null.
     *
     * @param string $property
     * @return bool
     */
    public function isNullableSetToNull(string $property): bool
    {
        return in_array($property, $this->getOpenAPINullablesSetToNull(), true);
    }

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'number_of_words' => 'number_of_words',
        'number_of_sentences' => 'number_of_sentences',
        'readability' => 'readability',
        'skimmability' => 'skimmability',
        'interestingness' => 'interestingness',
        'style' => 'style',
        'total_score' => 'total_score'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'number_of_words' => 'setNumberOfWords',
        'number_of_sentences' => 'setNumberOfSentences',
        'readability' => 'setReadability',
        'skimmability' => 'setSkimmability',
        'interestingness' => 'setInterestingness',
        'style' => 'setStyle',
        'total_score' => 'setTotalScore'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'number_of_words' => 'getNumberOfWords',
        'number_of_sentences' => 'getNumberOfSentences',
        'readability' => 'getReadability',
        'skimmability' => 'getSkimmability',
        'interestingness' => 'getInterestingness',
        'style' => 'getStyle',
        'total_score' => 'getTotalScore'
    ];

    /**
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @return array
     */
    public static function attributeMap()
    {
        return self::$attributeMap;
    }

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @return array
     */
    public static function setters()
    {
        return self::$setters;
    }

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @return array
     */
    public static function getters()
    {
        return self::$getters;
    }

    /**
     * The original name of the model.
     *
     * @return string
     */
    public function getModelName()
    {
        return self::$openAPIModelName;
    }


    /**
     * Associative array for storing property values
     *
     * @var mixed[]
     */
    protected $container = [];

    /**
     * Constructor
     *
     * @param mixed[] $data Associated array of property values
     *                      initializing the model
     */
    public function __construct(array $data = null)
    {
        $this->setIfExists('number_of_words', $data ?? [], null);
        $this->setIfExists('number_of_sentences', $data ?? [], null);
        $this->setIfExists('readability', $data ?? [], null);
        $this->setIfExists('skimmability', $data ?? [], null);
        $this->setIfExists('interestingness', $data ?? [], null);
        $this->setIfExists('style', $data ?? [], null);
        $this->setIfExists('total_score', $data ?? [], null);
    }

    /**
    * Sets $this->container[$variableName] to the given data or to the given default Value; if $variableName
    * is nullable and its value is set to null in the $fields array, then mark it as "set to null" in the
    * $this->openAPINullablesSetToNull array
    *
    * @param string $variableName
    * @param array  $fields
    * @param mixed  $defaultValue
    */
    private function setIfExists(string $variableName, array $fields, $defaultValue): void
    {
        if (self::isNullable($variableName) && array_key_exists($variableName, $fields) && is_null($fields[$variableName])) {
            $this->openAPINullablesSetToNull[] = $variableName;
        }

        $this->container[$variableName] = $fields[$variableName] ?? $defaultValue;
    }

    /**
     * Show all the invalid properties with reasons.
     *
     * @return array invalid properties with reasons
     */
    public function listInvalidProperties()
    {
        $invalidProperties = [];

        return $invalidProperties;
    }

    /**
     * Validate all the properties in the model
     * return true if all passed
     *
     * @return bool True if all properties are valid
     */
    public function valid()
    {
        return count($this->listInvalidProperties()) === 0;
    }


    /**
     * Gets number_of_words
     *
     * @return int|null
     */
    public function getNumberOfWords()
    {
        return $this->container['number_of_words'];
    }

    /**
     * Sets number_of_words
     *
     * @param int|null $number_of_words number_of_words
     *
     * @return self
     */
    public function setNumberOfWords($number_of_words)
    {
        if (is_null($number_of_words)) {
            throw new \InvalidArgumentException('non-nullable number_of_words cannot be null');
        }
        $this->container['number_of_words'] = $number_of_words;

        return $this;
    }

    /**
     * Gets number_of_sentences
     *
     * @return int|null
     */
    public function getNumberOfSentences()
    {
        return $this->container['number_of_sentences'];
    }

    /**
     * Sets number_of_sentences
     *
     * @param int|null $number_of_sentences number_of_sentences
     *
     * @return self
     */
    public function setNumberOfSentences($number_of_sentences)
    {
        if (is_null($number_of_sentences)) {
            throw new \InvalidArgumentException('non-nullable number_of_sentences cannot be null');
        }
        $this->container['number_of_sentences'] = $number_of_sentences;

        return $this;
    }

    /**
     * Gets readability
     *
     * @return \OpenAPI\Client\Model\ScoreText200ResponseReadability|null
     */
    public function getReadability()
    {
        return $this->container['readability'];
    }

    /**
     * Sets readability
     *
     * @param \OpenAPI\Client\Model\ScoreText200ResponseReadability|null $readability readability
     *
     * @return self
     */
    public function setReadability($readability)
    {
        if (is_null($readability)) {
            throw new \InvalidArgumentException('non-nullable readability cannot be null');
        }
        $this->container['readability'] = $readability;

        return $this;
    }

    /**
     * Gets skimmability
     *
     * @return \OpenAPI\Client\Model\ScoreText200ResponseSkimmability|null
     */
    public function getSkimmability()
    {
        return $this->container['skimmability'];
    }

    /**
     * Sets skimmability
     *
     * @param \OpenAPI\Client\Model\ScoreText200ResponseSkimmability|null $skimmability skimmability
     *
     * @return self
     */
    public function setSkimmability($skimmability)
    {
        if (is_null($skimmability)) {
            throw new \InvalidArgumentException('non-nullable skimmability cannot be null');
        }
        $this->container['skimmability'] = $skimmability;

        return $this;
    }

    /**
     * Gets interestingness
     *
     * @return \OpenAPI\Client\Model\ScoreText200ResponseInterestingness|null
     */
    public function getInterestingness()
    {
        return $this->container['interestingness'];
    }

    /**
     * Sets interestingness
     *
     * @param \OpenAPI\Client\Model\ScoreText200ResponseInterestingness|null $interestingness interestingness
     *
     * @return self
     */
    public function setInterestingness($interestingness)
    {
        if (is_null($interestingness)) {
            throw new \InvalidArgumentException('non-nullable interestingness cannot be null');
        }
        $this->container['interestingness'] = $interestingness;

        return $this;
    }

    /**
     * Gets style
     *
     * @return \OpenAPI\Client\Model\ScoreText200ResponseStyle|null
     */
    public function getStyle()
    {
        return $this->container['style'];
    }

    /**
     * Sets style
     *
     * @param \OpenAPI\Client\Model\ScoreText200ResponseStyle|null $style style
     *
     * @return self
     */
    public function setStyle($style)
    {
        if (is_null($style)) {
            throw new \InvalidArgumentException('non-nullable style cannot be null');
        }
        $this->container['style'] = $style;

        return $this;
    }

    /**
     * Gets total_score
     *
     * @return float|null
     */
    public function getTotalScore()
    {
        return $this->container['total_score'];
    }

    /**
     * Sets total_score
     *
     * @param float|null $total_score total_score
     *
     * @return self
     */
    public function setTotalScore($total_score)
    {
        if (is_null($total_score)) {
            throw new \InvalidArgumentException('non-nullable total_score cannot be null');
        }
        $this->container['total_score'] = $total_score;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset): bool
    {
        return isset($this->container[$offset]);
    }

    /**
     * Gets offset.
     *
     * @param integer $offset Offset
     *
     * @return mixed|null
     */
    #[\ReturnTypeWillChange]
    public function offsetGet($offset)
    {
        return $this->container[$offset] ?? null;
    }

    /**
     * Sets value based on offset.
     *
     * @param int|null $offset Offset
     * @param mixed    $value  Value to be set
     *
     * @return void
     */
    public function offsetSet($offset, $value): void
    {
        if (is_null($offset)) {
            $this->container[] = $value;
        } else {
            $this->container[$offset] = $value;
        }
    }

    /**
     * Unsets offset.
     *
     * @param integer $offset Offset
     *
     * @return void
     */
    public function offsetUnset($offset): void
    {
        unset($this->container[$offset]);
    }

    /**
     * Serializes the object to a value that can be serialized natively by json_encode().
     * @link https://www.php.net/manual/en/jsonserializable.jsonserialize.php
     *
     * @return mixed Returns data which can be serialized by json_encode(), which is a value
     * of any type other than a resource.
     */
    #[\ReturnTypeWillChange]
    public function jsonSerialize()
    {
       return ObjectSerializer::sanitizeForSerialization($this);
    }

    /**
     * Gets the string presentation of the object
     *
     * @return string
     */
    public function __toString()
    {
        return json_encode(
            ObjectSerializer::sanitizeForSerialization($this),
            JSON_PRETTY_PRINT
        );
    }

    /**
     * Gets a header-safe presentation of the object
     *
     * @return string
     */
    public function toHeaderValue()
    {
        return json_encode(ObjectSerializer::sanitizeForSerialization($this));
    }
}


