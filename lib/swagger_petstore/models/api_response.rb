module SwaggerPetstore
  # ApiResponse Model.
  class ApiResponse < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :message

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'code'
      @_hash['type'] = 'type'
      @_hash['message'] = 'message'
      @_hash
    end

    def initialize(code = nil,
                   type = nil,
                   message = nil)
      @code = code
      @type = type
      @message = message
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash['code']
      type = hash['type']
      message = hash['message']

      # Create object from extracted values.
      ApiResponse.new(code,
                      type,
                      message)
    end
  end
end
