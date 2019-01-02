require 'date'
module SwaggerPetstore
  # Order Model.
  class Order < BaseModel
    # TODO: Write general description for this method
    # @return [Long]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Long]
    attr_accessor :pet_id

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :quantity

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :ship_date

    # Order Status
    # @return [StatusEnum]
    attr_accessor :status

    # Order Status
    # @return [Boolean]
    attr_accessor :complete

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['pet_id'] = 'petId'
      @_hash['quantity'] = 'quantity'
      @_hash['ship_date'] = 'shipDate'
      @_hash['status'] = 'status'
      @_hash['complete'] = 'complete'
      @_hash
    end

    def initialize(id = nil,
                   pet_id = nil,
                   quantity = nil,
                   ship_date = nil,
                   status = nil,
                   complete = false)
      @id = id
      @pet_id = pet_id
      @quantity = quantity
      @ship_date = ship_date
      @status = status
      @complete = complete
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      pet_id = hash['petId']
      quantity = hash['quantity']
      ship_date = APIHelper.rfc3339(hash['shipDate']) if hash['shipDate']
      status = hash['status']
      complete = hash['complete'] ||= false

      # Create object from extracted values.
      Order.new(id,
                pet_id,
                quantity,
                ship_date,
                status,
                complete)
    end
  end
end
