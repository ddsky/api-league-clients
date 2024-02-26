<?php
/**
 * InlineResponse20018SkimmabilitySubscores
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
 * InlineResponse20018SkimmabilitySubscores Class Doc Comment
 *
 * @category Class
 * @package  com.apileague.client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<TKey, TValue>
 * @template TKey int|null
 * @template TValue mixed|null
 */
class InlineResponse20018SkimmabilitySubscores implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'inline_response_200_18_skimmability_subscores';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'bullet_point_ratio_score' => 'int[]',
        'image_score' => 'int[]',
        'highlighted_word_ratio_score' => 'int[]',
        'video_score' => 'int[]',
        'paragraph_score' => 'int[]',
        'paragraph_headline_ratio_score' => 'int[]'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'bullet_point_ratio_score' => null,
        'image_score' => null,
        'highlighted_word_ratio_score' => null,
        'video_score' => null,
        'paragraph_score' => null,
        'paragraph_headline_ratio_score' => null
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
        'bullet_point_ratio_score' => 'bullet_point_ratio_score',
        'image_score' => 'image_score',
        'highlighted_word_ratio_score' => 'highlighted_word_ratio_score',
        'video_score' => 'video_score',
        'paragraph_score' => 'paragraph_score',
        'paragraph_headline_ratio_score' => 'paragraph_headline_ratio_score'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'bullet_point_ratio_score' => 'setBulletPointRatioScore',
        'image_score' => 'setImageScore',
        'highlighted_word_ratio_score' => 'setHighlightedWordRatioScore',
        'video_score' => 'setVideoScore',
        'paragraph_score' => 'setParagraphScore',
        'paragraph_headline_ratio_score' => 'setParagraphHeadlineRatioScore'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'bullet_point_ratio_score' => 'getBulletPointRatioScore',
        'image_score' => 'getImageScore',
        'highlighted_word_ratio_score' => 'getHighlightedWordRatioScore',
        'video_score' => 'getVideoScore',
        'paragraph_score' => 'getParagraphScore',
        'paragraph_headline_ratio_score' => 'getParagraphHeadlineRatioScore'
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
        $this->container['bullet_point_ratio_score'] = $data['bullet_point_ratio_score'] ?? null;
        $this->container['image_score'] = $data['image_score'] ?? null;
        $this->container['highlighted_word_ratio_score'] = $data['highlighted_word_ratio_score'] ?? null;
        $this->container['video_score'] = $data['video_score'] ?? null;
        $this->container['paragraph_score'] = $data['paragraph_score'] ?? null;
        $this->container['paragraph_headline_ratio_score'] = $data['paragraph_headline_ratio_score'] ?? null;
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
     * Gets bullet_point_ratio_score
     *
     * @return int[]|null
     */
    public function getBulletPointRatioScore()
    {
        return $this->container['bullet_point_ratio_score'];
    }

    /**
     * Sets bullet_point_ratio_score
     *
     * @param int[]|null $bullet_point_ratio_score bullet_point_ratio_score
     *
     * @return self
     */
    public function setBulletPointRatioScore($bullet_point_ratio_score)
    {
        $this->container['bullet_point_ratio_score'] = $bullet_point_ratio_score;

        return $this;
    }

    /**
     * Gets image_score
     *
     * @return int[]|null
     */
    public function getImageScore()
    {
        return $this->container['image_score'];
    }

    /**
     * Sets image_score
     *
     * @param int[]|null $image_score image_score
     *
     * @return self
     */
    public function setImageScore($image_score)
    {
        $this->container['image_score'] = $image_score;

        return $this;
    }

    /**
     * Gets highlighted_word_ratio_score
     *
     * @return int[]|null
     */
    public function getHighlightedWordRatioScore()
    {
        return $this->container['highlighted_word_ratio_score'];
    }

    /**
     * Sets highlighted_word_ratio_score
     *
     * @param int[]|null $highlighted_word_ratio_score highlighted_word_ratio_score
     *
     * @return self
     */
    public function setHighlightedWordRatioScore($highlighted_word_ratio_score)
    {
        $this->container['highlighted_word_ratio_score'] = $highlighted_word_ratio_score;

        return $this;
    }

    /**
     * Gets video_score
     *
     * @return int[]|null
     */
    public function getVideoScore()
    {
        return $this->container['video_score'];
    }

    /**
     * Sets video_score
     *
     * @param int[]|null $video_score video_score
     *
     * @return self
     */
    public function setVideoScore($video_score)
    {
        $this->container['video_score'] = $video_score;

        return $this;
    }

    /**
     * Gets paragraph_score
     *
     * @return int[]|null
     */
    public function getParagraphScore()
    {
        return $this->container['paragraph_score'];
    }

    /**
     * Sets paragraph_score
     *
     * @param int[]|null $paragraph_score paragraph_score
     *
     * @return self
     */
    public function setParagraphScore($paragraph_score)
    {
        $this->container['paragraph_score'] = $paragraph_score;

        return $this;
    }

    /**
     * Gets paragraph_headline_ratio_score
     *
     * @return int[]|null
     */
    public function getParagraphHeadlineRatioScore()
    {
        return $this->container['paragraph_headline_ratio_score'];
    }

    /**
     * Sets paragraph_headline_ratio_score
     *
     * @param int[]|null $paragraph_headline_ratio_score paragraph_headline_ratio_score
     *
     * @return self
     */
    public function setParagraphHeadlineRatioScore($paragraph_headline_ratio_score)
    {
        $this->container['paragraph_headline_ratio_score'] = $paragraph_headline_ratio_score;

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


