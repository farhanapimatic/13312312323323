module SwaggerPetstore
  # UserController
  class UserController < BaseController
    @instance = UserController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # This can only be done by the logged in user.
    # @param [User] body Required parameter: Created user object
    # @return void response from the API call
    def create_user(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/user'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      unless _context.response.status_code.between?(200, 208)
        raise APIException.new(
          'successful operation',
          _context
        )
      end
      validate_response(_context)
    end

    # Creates list of users with given input array
    # @param [List of User] body Required parameter: List of user object
    # @return void response from the API call
    def create_users_with_array_input(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/user/createWithArray'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      unless _context.response.status_code.between?(200, 208)
        raise APIException.new(
          'successful operation',
          _context
        )
      end
      validate_response(_context)
    end

    # Creates list of users with given input array
    # @param [List of User] body Required parameter: List of user object
    # @return void response from the API call
    def create_users_with_list_input(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/user/createWithList'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      unless _context.response.status_code.between?(200, 208)
        raise APIException.new(
          'successful operation',
          _context
        )
      end
      validate_response(_context)
    end

    # Logs user into the system
    # @param [String] username Required parameter: The user name for login
    # @param [String] password Required parameter: The password for login in
    # clear text
    # @return String response from the API call
    def get_login_user(username,
                       password)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/user/login'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'username' => username,
          'password' => password
        },
        array_serialization: Configuration.array_serialization
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise APIException.new(
          'Invalid username/password supplied',
          _context
        )
      end
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Logs out current logged in user session
    # @return void response from the API call
    def get_logout_user
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/user/logout'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      unless _context.response.status_code.between?(200, 208)
        raise APIException.new(
          'successful operation',
          _context
        )
      end
      validate_response(_context)
    end

    # Get user by user name
    # @param [String] username Required parameter: The name that needs to be
    # fetched. Use user1 for testing.
    # @return User response from the API call
    def get_user_by_name(username)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/user/{username}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'username' => username
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url,
        headers: _headers
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise APIException.new(
          'Invalid username supplied',
          _context
        )
      elsif _context.response.status_code == 404
        raise APIException.new(
          'User not found',
          _context
        )
      end
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      User.from_hash(decoded)
    end

    # This can only be done by the logged in user.
    # @param [String] username Required parameter: name that need to be
    # updated
    # @param [User] body Required parameter: Updated user object
    # @return void response from the API call
    def update_user(username,
                    body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/user/{username}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'username' => username
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: body.to_json
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise APIException.new(
          'Invalid user supplied',
          _context
        )
      elsif _context.response.status_code == 404
        raise APIException.new(
          'User not found',
          _context
        )
      end
      validate_response(_context)
    end

    # This can only be done by the logged in user.
    # @param [String] username Required parameter: The name that needs to be
    # deleted
    # @return void response from the API call
    def delete_user(username)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/user/{username}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'username' => username
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise APIException.new(
          'Invalid username supplied',
          _context
        )
      elsif _context.response.status_code == 404
        raise APIException.new(
          'User not found',
          _context
        )
      end
      validate_response(_context)
    end
  end
end
