module SwaggerPetstore
  # User Model.
  class User < BaseModel
    # TODO: Write general description for this method
    # @return [Long]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :username

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :first_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :last_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :email

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :password

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :phone

    # User Status
    # @return [Integer]
    attr_accessor :user_status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['username'] = 'username'
      @_hash['first_name'] = 'firstName'
      @_hash['last_name'] = 'lastName'
      @_hash['email'] = 'email'
      @_hash['password'] = 'password'
      @_hash['phone'] = 'phone'
      @_hash['user_status'] = 'userStatus'
      @_hash
    end

    def initialize(id = nil,
                   username = nil,
                   first_name = nil,
                   last_name = nil,
                   email = nil,
                   password = nil,
                   phone = nil,
                   user_status = nil)
      @id = id
      @username = username
      @first_name = first_name
      @last_name = last_name
      @email = email
      @password = password
      @phone = phone
      @user_status = user_status
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      username = hash['username']
      first_name = hash['firstName']
      last_name = hash['lastName']
      email = hash['email']
      password = hash['password']
      phone = hash['phone']
      user_status = hash['userStatus']

      # Create object from extracted values.
      User.new(id,
               username,
               first_name,
               last_name,
               email,
               password,
               phone,
               user_status)
    end
  end
end
