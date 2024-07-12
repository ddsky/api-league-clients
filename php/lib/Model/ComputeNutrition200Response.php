<?php
/**
 * ComputeNutrition200Response
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
 * The version of the OpenAPI document: 1.4.2
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
 * ComputeNutrition200Response Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class ComputeNutrition200Response implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'computeNutrition_200_response';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'nutrients' => '\OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner[]',
        'properties' => '\OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner[]',
        'flavonoids' => '\OpenAPI\Client\Model\SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner[]',
        'ingredient_breakdown' => '\OpenAPI\Client\Model\ComputeNutrition200ResponseIngredientBreakdownInner[]',
        'caloric_breakdown' => '\OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown',
        'weight_per_serving' => '\OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionWeightPerServing'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'nutrients' => null,
        'properties' => null,
        'flavonoids' => null,
        'ingredient_breakdown' => null,
        'caloric_breakdown' => null,
        'weight_per_serving' => null
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'nutrients' => false,
        'properties' => false,
        'flavonoids' => false,
        'ingredient_breakdown' => false,
        'caloric_breakdown' => false,
        'weight_per_serving' => false
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
        'nutrients' => 'nutrients',
        'properties' => 'properties',
        'flavonoids' => 'flavonoids',
        'ingredient_breakdown' => 'ingredient_breakdown',
        'caloric_breakdown' => 'caloric_breakdown',
        'weight_per_serving' => 'weight_per_serving'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'nutrients' => 'setNutrients',
        'properties' => 'setProperties',
        'flavonoids' => 'setFlavonoids',
        'ingredient_breakdown' => 'setIngredientBreakdown',
        'caloric_breakdown' => 'setCaloricBreakdown',
        'weight_per_serving' => 'setWeightPerServing'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'nutrients' => 'getNutrients',
        'properties' => 'getProperties',
        'flavonoids' => 'getFlavonoids',
        'ingredient_breakdown' => 'getIngredientBreakdown',
        'caloric_breakdown' => 'getCaloricBreakdown',
        'weight_per_serving' => 'getWeightPerServing'
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
        $this->setIfExists('nutrients', $data ?? [], null);
        $this->setIfExists('properties', $data ?? [], null);
        $this->setIfExists('flavonoids', $data ?? [], null);
        $this->setIfExists('ingredient_breakdown', $data ?? [], null);
        $this->setIfExists('caloric_breakdown', $data ?? [], null);
        $this->setIfExists('weight_per_serving', $data ?? [], null);
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
     * Gets nutrients
     *
     * @return \OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner[]|null
     */
    public function getNutrients()
    {
        return $this->container['nutrients'];
    }

    /**
     * Sets nutrients
     *
     * @param \OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInnerNutrientsInner[]|null $nutrients nutrients
     *
     * @return self
     */
    public function setNutrients($nutrients)
    {
        if (is_null($nutrients)) {
            throw new \InvalidArgumentException('non-nullable nutrients cannot be null');
        }
        $this->container['nutrients'] = $nutrients;

        return $this;
    }

    /**
     * Gets properties
     *
     * @return \OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner[]|null
     */
    public function getProperties()
    {
        return $this->container['properties'];
    }

    /**
     * Sets properties
     *
     * @param \OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionFlavonoidsInner[]|null $properties properties
     *
     * @return self
     */
    public function setProperties($properties)
    {
        if (is_null($properties)) {
            throw new \InvalidArgumentException('non-nullable properties cannot be null');
        }
        $this->container['properties'] = $properties;

        return $this;
    }

    /**
     * Gets flavonoids
     *
     * @return \OpenAPI\Client\Model\SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner[]|null
     */
    public function getFlavonoids()
    {
        return $this->container['flavonoids'];
    }

    /**
     * Sets flavonoids
     *
     * @param \OpenAPI\Client\Model\SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner[]|null $flavonoids flavonoids
     *
     * @return self
     */
    public function setFlavonoids($flavonoids)
    {
        if (is_null($flavonoids)) {
            throw new \InvalidArgumentException('non-nullable flavonoids cannot be null');
        }
        $this->container['flavonoids'] = $flavonoids;

        return $this;
    }

    /**
     * Gets ingredient_breakdown
     *
     * @return \OpenAPI\Client\Model\ComputeNutrition200ResponseIngredientBreakdownInner[]|null
     */
    public function getIngredientBreakdown()
    {
        return $this->container['ingredient_breakdown'];
    }

    /**
     * Sets ingredient_breakdown
     *
     * @param \OpenAPI\Client\Model\ComputeNutrition200ResponseIngredientBreakdownInner[]|null $ingredient_breakdown ingredient_breakdown
     *
     * @return self
     */
    public function setIngredientBreakdown($ingredient_breakdown)
    {
        if (is_null($ingredient_breakdown)) {
            throw new \InvalidArgumentException('non-nullable ingredient_breakdown cannot be null');
        }
        $this->container['ingredient_breakdown'] = $ingredient_breakdown;

        return $this;
    }

    /**
     * Gets caloric_breakdown
     *
     * @return \OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown|null
     */
    public function getCaloricBreakdown()
    {
        return $this->container['caloric_breakdown'];
    }

    /**
     * Sets caloric_breakdown
     *
     * @param \OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionCaloricBreakdown|null $caloric_breakdown caloric_breakdown
     *
     * @return self
     */
    public function setCaloricBreakdown($caloric_breakdown)
    {
        if (is_null($caloric_breakdown)) {
            throw new \InvalidArgumentException('non-nullable caloric_breakdown cannot be null');
        }
        $this->container['caloric_breakdown'] = $caloric_breakdown;

        return $this;
    }

    /**
     * Gets weight_per_serving
     *
     * @return \OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionWeightPerServing|null
     */
    public function getWeightPerServing()
    {
        return $this->container['weight_per_serving'];
    }

    /**
     * Sets weight_per_serving
     *
     * @param \OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionWeightPerServing|null $weight_per_serving weight_per_serving
     *
     * @return self
     */
    public function setWeightPerServing($weight_per_serving)
    {
        if (is_null($weight_per_serving)) {
            throw new \InvalidArgumentException('non-nullable weight_per_serving cannot be null');
        }
        $this->container['weight_per_serving'] = $weight_per_serving;

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


