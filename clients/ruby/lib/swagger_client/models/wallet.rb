=begin
#BitMEX API

### REST API for the BitMEX Trading Platform  [Changelog](/app/apiChangelog)    #### Getting Started   ##### Fetching Data  All REST endpoints are documented below. You can try out any query right from this interface.  Most table queries accept `count`, `start`, and `reverse` params. Set `reverse=true` to get rows newest-first.  Additional documentation regarding filters, timestamps, and authentication is available in [the main API documentation](https://www.bitmex.com/app/restAPI).  *All* table data is available via the [Websocket](/app/wsAPI). We highly recommend using the socket if you want to have the quickest possible data without being subject to ratelimits.  ##### Return Types  By default, all data is returned as JSON. Send `?_format=csv` to get CSV data or `?_format=xml` to get XML data.  ##### Trade Data Queries  *This is only a small subset of what is available, to get you started.*  Fill in the parameters and click the `Try it out!` button to try any of these queries.  * [Pricing Data](#!/Quote/Quote_get)  * [Trade Data](#!/Trade/Trade_get)  * [OrderBook Data](#!/OrderBook/OrderBook_getL2)  * [Settlement Data](#!/Settlement/Settlement_get)  * [Exchange Statistics](#!/Stats/Stats_history)  Every function of the BitMEX.com platform is exposed here and documented. Many more functions are available.  -  ## All API Endpoints  Click to expand a section. 

OpenAPI spec version: 1.2.0
Contact: support@bitmex.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'date'

module SwaggerClient

  class Wallet
    attr_accessor :account

    attr_accessor :currency

    attr_accessor :prev_deposited

    attr_accessor :prev_withdrawn

    attr_accessor :prev_amount

    attr_accessor :prev_timestamp

    attr_accessor :delta_deposited

    attr_accessor :delta_withdrawn

    attr_accessor :delta_amount

    attr_accessor :deposited

    attr_accessor :withdrawn

    attr_accessor :amount

    attr_accessor :pending_credit

    attr_accessor :pending_debit

    attr_accessor :confirmed_debit

    attr_accessor :timestamp

    attr_accessor :addr

    attr_accessor :withdrawal_lock


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account' => :'account',
        :'currency' => :'currency',
        :'prev_deposited' => :'prevDeposited',
        :'prev_withdrawn' => :'prevWithdrawn',
        :'prev_amount' => :'prevAmount',
        :'prev_timestamp' => :'prevTimestamp',
        :'delta_deposited' => :'deltaDeposited',
        :'delta_withdrawn' => :'deltaWithdrawn',
        :'delta_amount' => :'deltaAmount',
        :'deposited' => :'deposited',
        :'withdrawn' => :'withdrawn',
        :'amount' => :'amount',
        :'pending_credit' => :'pendingCredit',
        :'pending_debit' => :'pendingDebit',
        :'confirmed_debit' => :'confirmedDebit',
        :'timestamp' => :'timestamp',
        :'addr' => :'addr',
        :'withdrawal_lock' => :'withdrawalLock'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account' => :'Float',
        :'currency' => :'String',
        :'prev_deposited' => :'Float',
        :'prev_withdrawn' => :'Float',
        :'prev_amount' => :'Float',
        :'prev_timestamp' => :'DateTime',
        :'delta_deposited' => :'Float',
        :'delta_withdrawn' => :'Float',
        :'delta_amount' => :'Float',
        :'deposited' => :'Float',
        :'withdrawn' => :'Float',
        :'amount' => :'Float',
        :'pending_credit' => :'Float',
        :'pending_debit' => :'Float',
        :'confirmed_debit' => :'Float',
        :'timestamp' => :'DateTime',
        :'addr' => :'String',
        :'withdrawal_lock' => :'Array<XAny>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'account')
        self.account = attributes[:'account']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'prevDeposited')
        self.prev_deposited = attributes[:'prevDeposited']
      end

      if attributes.has_key?(:'prevWithdrawn')
        self.prev_withdrawn = attributes[:'prevWithdrawn']
      end

      if attributes.has_key?(:'prevAmount')
        self.prev_amount = attributes[:'prevAmount']
      end

      if attributes.has_key?(:'prevTimestamp')
        self.prev_timestamp = attributes[:'prevTimestamp']
      end

      if attributes.has_key?(:'deltaDeposited')
        self.delta_deposited = attributes[:'deltaDeposited']
      end

      if attributes.has_key?(:'deltaWithdrawn')
        self.delta_withdrawn = attributes[:'deltaWithdrawn']
      end

      if attributes.has_key?(:'deltaAmount')
        self.delta_amount = attributes[:'deltaAmount']
      end

      if attributes.has_key?(:'deposited')
        self.deposited = attributes[:'deposited']
      end

      if attributes.has_key?(:'withdrawn')
        self.withdrawn = attributes[:'withdrawn']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'pendingCredit')
        self.pending_credit = attributes[:'pendingCredit']
      end

      if attributes.has_key?(:'pendingDebit')
        self.pending_debit = attributes[:'pendingDebit']
      end

      if attributes.has_key?(:'confirmedDebit')
        self.confirmed_debit = attributes[:'confirmedDebit']
      end

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'addr')
        self.addr = attributes[:'addr']
      end

      if attributes.has_key?(:'withdrawalLock')
        if (value = attributes[:'withdrawalLock']).is_a?(Array)
          self.withdrawal_lock = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @account.nil?
      return false if @currency.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account == o.account &&
          currency == o.currency &&
          prev_deposited == o.prev_deposited &&
          prev_withdrawn == o.prev_withdrawn &&
          prev_amount == o.prev_amount &&
          prev_timestamp == o.prev_timestamp &&
          delta_deposited == o.delta_deposited &&
          delta_withdrawn == o.delta_withdrawn &&
          delta_amount == o.delta_amount &&
          deposited == o.deposited &&
          withdrawn == o.withdrawn &&
          amount == o.amount &&
          pending_credit == o.pending_credit &&
          pending_debit == o.pending_debit &&
          confirmed_debit == o.confirmed_debit &&
          timestamp == o.timestamp &&
          addr == o.addr &&
          withdrawal_lock == o.withdrawal_lock
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account, currency, prev_deposited, prev_withdrawn, prev_amount, prev_timestamp, delta_deposited, delta_withdrawn, delta_amount, deposited, withdrawn, amount, pending_credit, pending_debit, confirmed_debit, timestamp, addr, withdrawal_lock].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
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
