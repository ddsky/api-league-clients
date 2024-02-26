<?php
/**
 * InlineResponse20019ReadabilitySubscores
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
 * InlineResponse20019ReadabilitySubscores Class Doc Comment
 *
 * @category Class
 * @package  com.apileague.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class InlineResponse20019ReadabilitySubscores implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'inline_response_200_19_readability_subscores';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'reading_time_seconds' => 'int',
        'forcast' => 'float',
        'flesch' => 'float',
        'smog' => 'float',
        'ari' => 'float',
        'lix' => 'float',
        'coleman_liau' => 'float',
        'kincaid' => 'float',
        'fog' => 'float'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'reading_time_seconds' => null,
        'forcast' => null,
        'flesch' => null,
        'smog' => null,
        'ari' => null,
        'lix' => null,
        'coleman_liau' => null,
        'kincaid' => null,
        'fog' => null
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
        'reading_time_seconds' => 'reading_time_seconds',
        'forcast' => 'forcast',
        'flesch' => 'flesch',
        'smog' => 'smog',
        'ari' => 'ari',
        'lix' => 'lix',
        'coleman_liau' => 'coleman_liau',
        'kincaid' => 'kincaid',
        'fog' => 'fog'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'reading_time_seconds' => 'setReadingTimeSeconds',
        'forcast' => 'setForcast',
        'flesch' => 'setFlesch',
        'smog' => 'setSmog',
        'ari' => 'setAri',
        'lix' => 'setLix',
        'coleman_liau' => 'setColemanLiau',
        'kincaid' => 'setKincaid',
        'fog' => 'setFog'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'reading_time_seconds' => 'getReadingTimeSeconds',
        'forcast' => 'getForcast',
        'flesch' => 'getFlesch',
        'smog' => 'getSmog',
        'ari' => 'getAri',
        'lix' => 'getLix',
        'coleman_liau' => 'getColemanLiau',
        'kincaid' => 'getKincaid',
        'fog' => 'getFog'
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
        $this->container['reading_time_seconds'] = $data['reading_time_seconds'] ?? null;
        $this->container['forcast'] = $data['forcast'] ?? null;
        $this->container['flesch'] = $data['flesch'] ?? null;
        $this->container['smog'] = $data['smog'] ?? null;
        $this->container['ari'] = $data['ari'] ?? null;
        $this->container['lix'] = $data['lix'] ?? null;
        $this->container['coleman_liau'] = $data['coleman_liau'] ?? null;
        $this->container['kincaid'] = $data['kincaid'] ?? null;
        $this->container['fog'] = $data['fog'] ?? null;
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
     * Gets reading_time_seconds
     *
     * @return int|null
     */
    public function getReadingTimeSeconds()
    {
        return $this->container['reading_time_seconds'];
    }

    /**
     * Sets reading_time_seconds
     *
     * @param int|null $reading_time_seconds reading_time_seconds
     *
     * @return self
     */
    public function setReadingTimeSeconds($reading_time_seconds)
    {
        $this->container['reading_time_seconds'] = $reading_time_seconds;

        return $this;
    }

    /**
     * Gets forcast
     *
     * @return float|null
     */
    public function getForcast()
    {
        return $this->container['forcast'];
    }

    /**
     * Sets forcast
     *
     * @param float|null $forcast forcast
     *
     * @return self
     */
    public function setForcast($forcast)
    {
        $this->container['forcast'] = $forcast;

        return $this;
    }

    /**
     * Gets flesch
     *
     * @return float|null
     */
    public function getFlesch()
    {
        return $this->container['flesch'];
    }

    /**
     * Sets flesch
     *
     * @param float|null $flesch flesch
     *
     * @return self
     */
    public function setFlesch($flesch)
    {
        $this->container['flesch'] = $flesch;

        return $this;
    }

    /**
     * Gets smog
     *
     * @return float|null
     */
    public function getSmog()
    {
        return $this->container['smog'];
    }

    /**
     * Sets smog
     *
     * @param float|null $smog smog
     *
     * @return self
     */
    public function setSmog($smog)
    {
        $this->container['smog'] = $smog;

        return $this;
    }

    /**
     * Gets ari
     *
     * @return float|null
     */
    public function getAri()
    {
        return $this->container['ari'];
    }

    /**
     * Sets ari
     *
     * @param float|null $ari ari
     *
     * @return self
     */
    public function setAri($ari)
    {
        $this->container['ari'] = $ari;

        return $this;
    }

    /**
     * Gets lix
     *
     * @return float|null
     */
    public function getLix()
    {
        return $this->container['lix'];
    }

    /**
     * Sets lix
     *
     * @param float|null $lix lix
     *
     * @return self
     */
    public function setLix($lix)
    {
        $this->container['lix'] = $lix;

        return $this;
    }

    /**
     * Gets coleman_liau
     *
     * @return float|null
     */
    public function getColemanLiau()
    {
        return $this->container['coleman_liau'];
    }

    /**
     * Sets coleman_liau
     *
     * @param float|null $coleman_liau coleman_liau
     *
     * @return self
     */
    public function setColemanLiau($coleman_liau)
    {
        $this->container['coleman_liau'] = $coleman_liau;

        return $this;
    }

    /**
     * Gets kincaid
     *
     * @return float|null
     */
    public function getKincaid()
    {
        return $this->container['kincaid'];
    }

    /**
     * Sets kincaid
     *
     * @param float|null $kincaid kincaid
     *
     * @return self
     */
    public function setKincaid($kincaid)
    {
        $this->container['kincaid'] = $kincaid;

        return $this;
    }

    /**
     * Gets fog
     *
     * @return float|null
     */
    public function getFog()
    {
        return $this->container['fog'];
    }

    /**
     * Sets fog
     *
     * @param float|null $fog fog
     *
     * @return self
     */
    public function setFog($fog)
    {
        $this->container['fog'] = $fog;

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


