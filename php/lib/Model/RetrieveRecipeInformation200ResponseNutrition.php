<?php
/**
 * RetrieveRecipeInformation200ResponseNutrition
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
 * The version of the OpenAPI document: 1.6.2
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
 * RetrieveRecipeInformation200ResponseNutrition Class Doc Comment
 *
 * @category Class
 * @package  OpenAPI\Client
 * @author   OpenAPI Generator team
 * @link     https://openapi-generator.tech
 * @implements \ArrayAccess<string, mixed>
 */
class RetrieveRecipeInformation200ResponseNutrition implements ModelInterface, ArrayAccess, \JsonSerializable
{
    public const DISCRIMINATOR = null;

    /**
      * The original name of the model.
      *
      * @var string
      */
    protected static $openAPIModelName = 'retrieveRecipeInformation_200_response_nutrition';

    /**
      * Array of property to type mappings. Used for (de)serialization
      *
      * @var string[]
      */
    protected static $openAPITypes = [
        'weight_per_serving' => '\OpenAPI\Client\Model\SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing',
        'caloric_breakdown' => '\OpenAPI\Client\Model\SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown',
        'flavonoids' => '\OpenAPI\Client\Model\SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner[]',
        'ingredient_breakdown' => '\OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner[]',
        'properties' => '\OpenAPI\Client\Model\SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner[]',
        'nutrients' => '\OpenAPI\Client\Model\SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner[]'
    ];

    /**
      * Array of property to format mappings. Used for (de)serialization
      *
      * @var string[]
      * @phpstan-var array<string, string|null>
      * @psalm-var array<string, string|null>
      */
    protected static $openAPIFormats = [
        'weight_per_serving' => null,
        'caloric_breakdown' => null,
        'flavonoids' => null,
        'ingredient_breakdown' => null,
        'properties' => null,
        'nutrients' => null
    ];

    /**
      * Array of nullable properties. Used for (de)serialization
      *
      * @var boolean[]
      */
    protected static array $openAPINullables = [
        'weight_per_serving' => false,
        'caloric_breakdown' => false,
        'flavonoids' => false,
        'ingredient_breakdown' => false,
        'properties' => false,
        'nutrients' => false
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
        'weight_per_serving' => 'weight_per_serving',
        'caloric_breakdown' => 'caloric_breakdown',
        'flavonoids' => 'flavonoids',
        'ingredient_breakdown' => 'ingredient_breakdown',
        'properties' => 'properties',
        'nutrients' => 'nutrients'
    ];

    /**
     * Array of attributes to setter functions (for deserialization of responses)
     *
     * @var string[]
     */
    protected static $setters = [
        'weight_per_serving' => 'setWeightPerServing',
        'caloric_breakdown' => 'setCaloricBreakdown',
        'flavonoids' => 'setFlavonoids',
        'ingredient_breakdown' => 'setIngredientBreakdown',
        'properties' => 'setProperties',
        'nutrients' => 'setNutrients'
    ];

    /**
     * Array of attributes to getter functions (for serialization of requests)
     *
     * @var string[]
     */
    protected static $getters = [
        'weight_per_serving' => 'getWeightPerServing',
        'caloric_breakdown' => 'getCaloricBreakdown',
        'flavonoids' => 'getFlavonoids',
        'ingredient_breakdown' => 'getIngredientBreakdown',
        'properties' => 'getProperties',
        'nutrients' => 'getNutrients'
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
        $this->setIfExists('weight_per_serving', $data ?? [], null);
        $this->setIfExists('caloric_breakdown', $data ?? [], null);
        $this->setIfExists('flavonoids', $data ?? [], null);
        $this->setIfExists('ingredient_breakdown', $data ?? [], null);
        $this->setIfExists('properties', $data ?? [], null);
        $this->setIfExists('nutrients', $data ?? [], null);
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
     * Gets weight_per_serving
     *
     * @return \OpenAPI\Client\Model\SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing|null
     */
    public function getWeightPerServing()
    {
        return $this->container['weight_per_serving'];
    }

    /**
     * Sets weight_per_serving
     *
     * @param \OpenAPI\Client\Model\SearchDrinks200ResponseDrinksInnerNutritionWeightPerServing|null $weight_per_serving weight_per_serving
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
     * Gets caloric_breakdown
     *
     * @return \OpenAPI\Client\Model\SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown|null
     */
    public function getCaloricBreakdown()
    {
        return $this->container['caloric_breakdown'];
    }

    /**
     * Sets caloric_breakdown
     *
     * @param \OpenAPI\Client\Model\SearchDrinks200ResponseDrinksInnerNutritionCaloricBreakdown|null $caloric_breakdown caloric_breakdown
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
     * Gets flavonoids
     *
     * @return \OpenAPI\Client\Model\SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner[]|null
     */
    public function getFlavonoids()
    {
        return $this->container['flavonoids'];
    }

    /**
     * Sets flavonoids
     *
     * @param \OpenAPI\Client\Model\SearchDrinks200ResponseDrinksInnerNutritionFlavonoidsInner[]|null $flavonoids flavonoids
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
     * @return \OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner[]|null
     */
    public function getIngredientBreakdown()
    {
        return $this->container['ingredient_breakdown'];
    }

    /**
     * Sets ingredient_breakdown
     *
     * @param \OpenAPI\Client\Model\RetrieveRecipeInformation200ResponseNutritionIngredientBreakdownInner[]|null $ingredient_breakdown ingredient_breakdown
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
     * Gets properties
     *
     * @return \OpenAPI\Client\Model\SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner[]|null
     */
    public function getProperties()
    {
        return $this->container['properties'];
    }

    /**
     * Sets properties
     *
     * @param \OpenAPI\Client\Model\SearchRecipes200ResponseRecipesInnerNutritionNutrientsInner[]|null $properties properties
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
     * Gets nutrients
     *
     * @return \OpenAPI\Client\Model\SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner[]|null
     */
    public function getNutrients()
    {
        return $this->container['nutrients'];
    }

    /**
     * Sets nutrients
     *
     * @param \OpenAPI\Client\Model\SearchDrinks200ResponseDrinksInnerNutritionNutrientsInner[]|null $nutrients nutrients
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


