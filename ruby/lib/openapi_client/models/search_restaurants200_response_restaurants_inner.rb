=begin
#API League

#API League is a Hub for World Class APIs.

The version of the OpenAPI document: 1.6.3
Contact: mail@apileague.com
Generated by: https://openapi-generator.tech
Generator version: 7.8.0-SNAPSHOT

=end

require 'date'
require 'time'

module OpenapiClient
  class SearchRestaurants200ResponseRestaurantsInner
    attr_accessor :offers_third_party_delivery

    attr_accessor :address

    attr_accessor :supports_upc_codes

    attr_accessor :is_open

    attr_accessor :description

    attr_accessor :weighted_rating_value

    attr_accessor :type

    attr_accessor :offers_first_party_delivery

    attr_accessor :aggregated_rating_count

    attr_accessor :pickup_enabled

    attr_accessor :cuisines

    attr_accessor :miles

    attr_accessor :dollar_signs

    attr_accessor :delivery_enabled

    attr_accessor :name

    attr_accessor :phone_number

    attr_accessor :_id

    attr_accessor :local_hours

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'offers_third_party_delivery' => :'offers_third_party_delivery',
        :'address' => :'address',
        :'supports_upc_codes' => :'supports_upc_codes',
        :'is_open' => :'is_open',
        :'description' => :'description',
        :'weighted_rating_value' => :'weighted_rating_value',
        :'type' => :'type',
        :'offers_first_party_delivery' => :'offers_first_party_delivery',
        :'aggregated_rating_count' => :'aggregated_rating_count',
        :'pickup_enabled' => :'pickup_enabled',
        :'cuisines' => :'cuisines',
        :'miles' => :'miles',
        :'dollar_signs' => :'dollar_signs',
        :'delivery_enabled' => :'delivery_enabled',
        :'name' => :'name',
        :'phone_number' => :'phone_number',
        :'_id' => :'_id',
        :'local_hours' => :'local_hours'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'offers_third_party_delivery' => :'Boolean',
        :'address' => :'SearchRestaurants200ResponseRestaurantsInnerAddress',
        :'supports_upc_codes' => :'Boolean',
        :'is_open' => :'Boolean',
        :'description' => :'String',
        :'weighted_rating_value' => :'Integer',
        :'type' => :'String',
        :'offers_first_party_delivery' => :'Boolean',
        :'aggregated_rating_count' => :'Integer',
        :'pickup_enabled' => :'Boolean',
        :'cuisines' => :'Array<String>',
        :'miles' => :'Float',
        :'dollar_signs' => :'Integer',
        :'delivery_enabled' => :'Boolean',
        :'name' => :'String',
        :'phone_number' => :'Float',
        :'_id' => :'String',
        :'local_hours' => :'SearchRestaurants200ResponseRestaurantsInnerLocalHours'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'description',
        :'type',
        :'name',
        :'_id',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::SearchRestaurants200ResponseRestaurantsInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::SearchRestaurants200ResponseRestaurantsInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'offers_third_party_delivery')
        self.offers_third_party_delivery = attributes[:'offers_third_party_delivery']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'supports_upc_codes')
        self.supports_upc_codes = attributes[:'supports_upc_codes']
      end

      if attributes.key?(:'is_open')
        self.is_open = attributes[:'is_open']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'weighted_rating_value')
        self.weighted_rating_value = attributes[:'weighted_rating_value']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'offers_first_party_delivery')
        self.offers_first_party_delivery = attributes[:'offers_first_party_delivery']
      end

      if attributes.key?(:'aggregated_rating_count')
        self.aggregated_rating_count = attributes[:'aggregated_rating_count']
      end

      if attributes.key?(:'pickup_enabled')
        self.pickup_enabled = attributes[:'pickup_enabled']
      end

      if attributes.key?(:'cuisines')
        if (value = attributes[:'cuisines']).is_a?(Array)
          self.cuisines = value
        end
      end

      if attributes.key?(:'miles')
        self.miles = attributes[:'miles']
      end

      if attributes.key?(:'dollar_signs')
        self.dollar_signs = attributes[:'dollar_signs']
      end

      if attributes.key?(:'delivery_enabled')
        self.delivery_enabled = attributes[:'delivery_enabled']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'_id')
        self._id = attributes[:'_id']
      end

      if attributes.key?(:'local_hours')
        self.local_hours = attributes[:'local_hours']
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
          offers_third_party_delivery == o.offers_third_party_delivery &&
          address == o.address &&
          supports_upc_codes == o.supports_upc_codes &&
          is_open == o.is_open &&
          description == o.description &&
          weighted_rating_value == o.weighted_rating_value &&
          type == o.type &&
          offers_first_party_delivery == o.offers_first_party_delivery &&
          aggregated_rating_count == o.aggregated_rating_count &&
          pickup_enabled == o.pickup_enabled &&
          cuisines == o.cuisines &&
          miles == o.miles &&
          dollar_signs == o.dollar_signs &&
          delivery_enabled == o.delivery_enabled &&
          name == o.name &&
          phone_number == o.phone_number &&
          _id == o._id &&
          local_hours == o.local_hours
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [offers_third_party_delivery, address, supports_upc_codes, is_open, description, weighted_rating_value, type, offers_first_party_delivery, aggregated_rating_count, pickup_enabled, cuisines, miles, dollar_signs, delivery_enabled, name, phone_number, _id, local_hours].hash
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
