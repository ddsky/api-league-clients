<?php
/**
 * ScoreText200ResponseSkimmabilitySubscores
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
 * The version of the OpenAPI document: 1.6.3
 * Contact: mail@apileague.com
 * Generated by: https://openapi-generator.tech
 * Generator version: 7.8.0-SNAPSHOT
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
 * ScoreText200ResponseSkimmabilitySubscores Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class ScoreText200ResponseSkimmabilitySubscores implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'scoreText_200_response_skimmability_subscores';

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
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'bullet_point_ratio_score' => false,
        'image_score' => false,
        'highlighted_word_ratio_score' => false,
        'video_score' => false,
        'paragraph_score' => false,
        'paragraph_headline_ratio_score' => false
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
        $this->setIfExists('bullet_point_ratio_score', $data ?? [], null);
        $this->setIfExists('image_score', $data ?? [], null);
        $this->setIfExists('highlighted_word_ratio_score', $data ?? [], null);
        $this->setIfExists('video_score', $data ?? [], null);
        $this->setIfExists('paragraph_score', $data ?? [], null);
        $this->setIfExists('paragraph_headline_ratio_score', $data ?? [], null);
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
        if (is_null($bullet_point_ratio_score)) {
            throw new \InvalidArgumentException('non-nullable bullet_point_ratio_score cannot be null');
        }
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
        if (is_null($image_score)) {
            throw new \InvalidArgumentException('non-nullable image_score cannot be null');
        }
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
        if (is_null($highlighted_word_ratio_score)) {
            throw new \InvalidArgumentException('non-nullable highlighted_word_ratio_score cannot be null');
        }
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
        if (is_null($video_score)) {
            throw new \InvalidArgumentException('non-nullable video_score cannot be null');
        }
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
        if (is_null($paragraph_score)) {
            throw new \InvalidArgumentException('non-nullable paragraph_score cannot be null');
        }
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
        if (is_null($paragraph_headline_ratio_score)) {
            throw new \InvalidArgumentException('non-nullable paragraph_headline_ratio_score cannot be null');
        }
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


