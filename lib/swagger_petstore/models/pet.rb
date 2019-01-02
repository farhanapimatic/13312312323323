module SwaggerPetstore
  # Pet Model.
  class Pet < BaseModel
    # TODO: Write general description for this method
    # @return [Long]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Category]
    attr_accessor :category

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [List of String]
    attr_accessor :photo_urls

    # TODO: Write general description for this method
    # @return [List of Tag]
    attr_accessor :tags

    # pet status in the store
    # @return [Status1Enum]
    attr_accessor :status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['category'] = 'category'
      @_hash['name'] = 'name'
      @_hash['photo_urls'] = 'photoUrls'
      @_hash['tags'] = 'tags'
      @_hash['status'] = 'status'
      @_hash
    end

    def initialize(name = nil,
                   photo_urls = nil,
                   id = nil,
                   category = nil,
                   tags = nil,
                   status = nil)
      @id = id
      @category = category
      @name = name
      @photo_urls = photo_urls
      @tags = tags
      @status = status
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      photo_urls = hash['photoUrls']
      id = hash['id']
      category = Category.from_hash(hash['category']) if hash['category']
      # Parameter is an array, so we need to iterate through it
      tags = nil
      unless hash['tags'].nil?
        tags = []
        hash['tags'].each do |structure|
          tags << (Tag.from_hash(structure) if structure)
        end
      end
      status = hash['status']

      # Create object from extracted values.
      Pet.new(name,
              photo_urls,
              id,
              category,
              tags,
              status)
    end
  end
end
