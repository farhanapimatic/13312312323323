module SwaggerPetstore
  #  swagger_petstore client class.
  class SwaggerPetstoreClient
    # Singleton access to pet controller.
    # @return [PetController] Returns the controller instance.
    def pet
      PetController.instance
    end

    # Singleton access to store controller.
    # @return [StoreController] Returns the controller instance.
    def store
      StoreController.instance
    end

    # Singleton access to user controller.
    # @return [UserController] Returns the controller instance.
    def user
      UserController.instance
    end

    # Returns the configuration class for easy access.
    # @return [Configuration] Returns the actual configuration class.
    def config
      Configuration
    end

    # Initializer with authentication and configuration parameters.
    def initialize(o_auth_client_id: nil, o_auth_redirect_uri: nil)
      Configuration.o_auth_client_id = o_auth_client_id if
        o_auth_client_id
      Configuration.o_auth_redirect_uri = o_auth_redirect_uri if
        o_auth_redirect_uri
    end
  end
end
