module SwaggerPetstore
  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration
    # Set the array parameter serialization method.
    # (allowed: indexed, unindexed, plain, csv, tsv, psv)
    @array_serialization = 'indexed'

    # An enum for SDK environments.
    class Environment
      ENVIRONMENT = [PRODUCTION = 0].freeze
    end

    # An enum for API servers.
    class Server
      SERVER = [SERVER1 = 0, SERVER2 = 1, AUTH_SERVER = 2].freeze
    end

    # The environment in which the SDK is running.
    @environment = Environment::PRODUCTION

    # OAuth 2 Client ID
    @o_auth_client_id = 'TODO: Replace'

    # OAuth 2 Redirection endpoint or Callback Uri
    @o_auth_redirect_uri = 'TODO: Replace'

    # All the environments the SDK can run in.
    @environments = {
      Environment::PRODUCTION => {
        Server::SERVER1 => 'https://petstore.swagger.io/v2',
        Server::SERVER2 => 'http://petstore.swagger.io/v2',
        Server::AUTH_SERVER => 'https://petstore.swagger.io/oauth'
      }
    }

    # Generates the appropriate base URI for the environment and the server.
    # @param [Configuration::Server] The server enum for which the base URI is
    # required.
    # @return [String] The base URI.
    def self.get_base_uri(server = Server::SERVER1)
      environments[environment][server].clone
    end

    # The attribute accessors for public properties.
    class << self
      attr_accessor :array_serialization
      attr_accessor :environment
      attr_accessor :environments
      attr_accessor :o_auth_client_id
      attr_accessor :o_auth_redirect_uri
    end
  end
end
