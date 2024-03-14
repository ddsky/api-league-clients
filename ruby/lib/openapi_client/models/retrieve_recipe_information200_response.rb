=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.3.0

=end

require 'date'
require 'time'

module OpenapiClient
  class RetrieveRecipeInformation200Response
    attr_accessor :id

    attr_accessor :title

    attr_accessor :servings

    attr_accessor :images

    attr_accessor :dietary_properties

    attr_accessor :price_per_serving

    attr_accessor :times

    attr_accessor :nutrition

    attr_accessor :taste

    attr_accessor :cuisines

    attr_accessor :meal_types

    attr_accessor :occasions

    attr_accessor :ingredients

    attr_accessor :instructions

    attr_accessor :credits

    attr_accessor :scores

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'title' => :'title',
        :'servings' => :'servings',
        :'images' => :'images',
        :'dietary_properties' => :'dietary_properties',
        :'price_per_serving' => :'price_per_serving',
        :'times' => :'times',
        :'nutrition' => :'nutrition',
        :'taste' => :'taste',
        :'cuisines' => :'cuisines',
        :'meal_types' => :'meal_types',
        :'occasions' => :'occasions',
        :'ingredients' => :'ingredients',
        :'instructions' => :'instructions',
        :'credits' => :'credits',
        :'scores' => :'scores'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Integer',
        :'title' => :'String',
        :'servings' => :'Integer',
        :'images' => :'Array<String>',
        :'dietary_properties' => :'RetrieveRecipeInformation200ResponseDietaryProperties',
        :'price_per_serving' => :'Float',
        :'times' => :'RetrieveRecipeInformation200ResponseTimes',
        :'nutrition' => :'RetrieveRecipeInformation200ResponseNutrition',
        :'taste' => :'RetrieveRecipeInformation200ResponseTaste',
        :'cuisines' => :'Array<String>',
        :'meal_types' => :'Array<String>',
        :'occasions' => :'Array<String>',
        :'ingredients' => :'Array<RetrieveRecipeInformation200ResponseIngredientsInner>',
        :'instructions' => :'Array<RetrieveRecipeInformation200ResponseInstructionsInner>',
        :'credits' => :'RetrieveRecipeInformation200ResponseCredits',
        :'scores' => :'RetrieveRecipeInformation200ResponseScores'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'title',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::RetrieveRecipeInformation200Response` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::RetrieveRecipeInformation200Response`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'servings')
        self.servings = attributes[:'servings']
      end

      if attributes.key?(:'images')
        if (value = attributes[:'images']).is_a?(Array)
          self.images = value
        end
      end

      if attributes.key?(:'dietary_properties')
        self.dietary_properties = attributes[:'dietary_properties']
      end

      if attributes.key?(:'price_per_serving')
        self.price_per_serving = attributes[:'price_per_serving']
      end

      if attributes.key?(:'times')
        self.times = attributes[:'times']
      end

      if attributes.key?(:'nutrition')
        self.nutrition = attributes[:'nutrition']
      end

      if attributes.key?(:'taste')
        self.taste = attributes[:'taste']
      end

      if attributes.key?(:'cuisines')
        if (value = attributes[:'cuisines']).is_a?(Array)
          self.cuisines = value
        end
      end

      if attributes.key?(:'meal_types')
        if (value = attributes[:'meal_types']).is_a?(Array)
          self.meal_types = value
        end
      end

      if attributes.key?(:'occasions')
        if (value = attributes[:'occasions']).is_a?(Array)
          self.occasions = value
        end
      end

      if attributes.key?(:'ingredients')
        if (value = attributes[:'ingredients']).is_a?(Array)
          self.ingredients = value
        end
      end

      if attributes.key?(:'instructions')
        if (value = attributes[:'instructions']).is_a?(Array)
          self.instructions = value
        end
      end

      if attributes.key?(:'credits')
        self.credits = attributes[:'credits']
      end

      if attributes.key?(:'scores')
        self.scores = attributes[:'scores']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          title == o.title &&
          servings == o.servings &&
          images == o.images &&
          dietary_properties == o.dietary_properties &&
          price_per_serving == o.price_per_serving &&
          times == o.times &&
          nutrition == o.nutrition &&
          taste == o.taste &&
          cuisines == o.cuisines &&
          meal_types == o.meal_types &&
          occasions == o.occasions &&
          ingredients == o.ingredients &&
          instructions == o.instructions &&
          credits == o.credits &&
          scores == o.scores
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, title, servings, images, dietary_properties, price_per_serving, times, nutrition, taste, cuisines, meal_types, occasions, ingredients, instructions, credits, scores].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
