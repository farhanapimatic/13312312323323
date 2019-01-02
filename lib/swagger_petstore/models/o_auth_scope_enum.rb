module SwaggerPetstore
  # OAuth 2 scopes supported by the API
  class OAuthScopeEnum
    O_AUTH_SCOPE_ENUM = [
      # modify pets in your account
      WRITEPETS = 'write:pets'.freeze,

      # read your pets
      READPETS = 'read:pets'.freeze
    ].freeze
  end
end
