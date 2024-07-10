=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.4.0
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

require 'date'
require 'time'

module OpenapiClient
  class RetrieveRecipeInformation200ResponseIngredientsInner
    attr_accessor :image

    attr_accessor :name_clean

    attr_accessor :amount

    attr_accessor :unit

    attr_accessor :measures

    attr_accessor :original

    attr_accessor :meta

    attr_accessor :original_name

    attr_accessor :name

    attr_accessor :id

    attr_accessor :aisle

    attr_accessor :consistency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'image' => :'image',
        :'name_clean' => :'name_clean',
        :'amount' => :'amount',
        :'unit' => :'unit',
        :'measures' => :'measures',
        :'original' => :'original',
        :'meta' => :'meta',
        :'original_name' => :'original_name',
        :'name' => :'name',
        :'id' => :'id',
        :'aisle' => :'aisle',
        :'consistency' => :'consistency'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'image' => :'String',
        :'name_clean' => :'String',
        :'amount' => :'Float',
        :'unit' => :'String',
        :'measures' => :'RetrieveRecipeInformation200ResponseIngredientsInnerMeasures',
        :'original' => :'String',
        :'meta' => :'Array<String>',
        :'original_name' => :'String',
        :'name' => :'String',
        :'id' => :'Integer',
        :'aisle' => :'String',
        :'consistency' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'image',
        :'name_clean',
        :'unit',
        :'original',
        :'original_name',
        :'name',
        :'aisle',
        :'consistency'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::RetrieveRecipeInformation200ResponseIngredientsInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::RetrieveRecipeInformation200ResponseIngredientsInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'image')
        self.image = attributes[:'image']
      end

      if attributes.key?(:'name_clean')
        self.name_clean = attributes[:'name_clean']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'unit')
        self.unit = attributes[:'unit']
      end

      if attributes.key?(:'measures')
        self.measures = attributes[:'measures']
      end

      if attributes.key?(:'original')
        self.original = attributes[:'original']
      end

      if attributes.key?(:'meta')
        if (value = attributes[:'meta']).is_a?(Array)
          self.meta = value
        end
      end

      if attributes.key?(:'original_name')
        self.original_name = attributes[:'original_name']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'aisle')
        self.aisle = attributes[:'aisle']
      end

      if attributes.key?(:'consistency')
        self.consistency = attributes[:'consistency']
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
          image == o.image &&
          name_clean == o.name_clean &&
          amount == o.amount &&
          unit == o.unit &&
          measures == o.measures &&
          original == o.original &&
          meta == o.meta &&
          original_name == o.original_name &&
          name == o.name &&
          id == o.id &&
          aisle == o.aisle &&
          consistency == o.consistency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [image, name_clean, amount, unit, measures, original, meta, original_name, name, id, aisle, consistency].hash
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
