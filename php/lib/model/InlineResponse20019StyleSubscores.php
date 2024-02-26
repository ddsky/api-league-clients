<?php
/**
 * InlineResponse20019StyleSubscores
 *
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

namespace com.apileague.client\com.apileague.client.model;

use \ArrayAccess;
use \com.apileague.client\ObjectSerializer;

/**
 * InlineResponse20019StyleSubscores Class Doc Comment
 *
 * @category Class
 * @package  com.apileague.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class InlineResponse20019StyleSubscores implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'inline_response_200_19_style_subscores';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'abbreviation_score' => 'int[]',
        'style_score' => 'int[]',
        'spelling_score' => 'int[]'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'abbreviation_score' => null,
        'style_score' => null,
        'spelling_score' => null
    ];

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
     * Array of attributes where the key is the local name,
     * and the value is the original name
     *
     * @var string[]
     */
    protected static $attributeMap = [
        'abbreviation_score' => 'abbreviation_score',
        'style_score' => 'style_score',
        'spelling_score' => 'spelling_score'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'abbreviation_score' => 'setAbbreviationScore',
        'style_score' => 'setStyleScore',
        'spelling_score' => 'setSpellingScore'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'abbreviation_score' => 'getAbbreviationScore',
        'style_score' => 'getStyleScore',
        'spelling_score' => 'getSpellingScore'
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
        $this->container['abbreviation_score'] = $data['abbreviation_score'] ?? null;
        $this->container['style_score'] = $data['style_score'] ?? null;
        $this->container['spelling_score'] = $data['spelling_score'] ?? null;
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
     * Gets abbreviation_score
     *
     * @return int[]|null
     */
    public function getAbbreviationScore()
    {
        return $this->container['abbreviation_score'];
    }

    /**
     * Sets abbreviation_score
     *
     * @param int[]|null $abbreviation_score abbreviation_score
     *
     * @return self
     */
    public function setAbbreviationScore($abbreviation_score)
    {
        $this->container['abbreviation_score'] = $abbreviation_score;

        return $this;
    }

    /**
     * Gets style_score
     *
     * @return int[]|null
     */
    public function getStyleScore()
    {
        return $this->container['style_score'];
    }

    /**
     * Sets style_score
     *
     * @param int[]|null $style_score style_score
     *
     * @return self
     */
    public function setStyleScore($style_score)
    {
        $this->container['style_score'] = $style_score;

        return $this;
    }

    /**
     * Gets spelling_score
     *
     * @return int[]|null
     */
    public function getSpellingScore()
    {
        return $this->container['spelling_score'];
    }

    /**
     * Sets spelling_score
     *
     * @param int[]|null $spelling_score spelling_score
     *
     * @return self
     */
    public function setSpellingScore($spelling_score)
    {
        $this->container['spelling_score'] = $spelling_score;

        return $this;
    }
    /**
     * Returns true if offset exists. False otherwise.
     *
     * @param integer $offset Offset
     *
     * @return boolean
     */
    public function offsetExists($offset)
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
    public function offsetSet($offset, $value)
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
    public function offsetUnset($offset)
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


