module SwaggerPetstore
  # PetController
  class PetController < BaseController
    @instance = PetController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Add a new pet to the store
    # @param [Pet] body Required parameter: Pet object that needs to be added to
    # the store
    # @return void response from the API call
    def add_pet(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/pet'
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
      if _context.response.status_code == 405
        raise APIException.new(
          'Invalid input',
          _context
        )
      end
      validate_response(_context)
    end

    # Update an existing pet
    # @param [Pet] body Required parameter: Pet object that needs to be added to
    # the store
    # @return void response from the API call
    def update_pet(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/pet'
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
          'Invalid ID supplied',
          _context
        )
      elsif _context.response.status_code == 404
        raise APIException.new(
          'Pet not found',
          _context
        )
      elsif _context.response.status_code == 405
        raise APIException.new(
          'Validation exception',
          _context
        )
      end
      validate_response(_context)
    end

    # Multiple status values can be provided with comma separated strings
    # @param [List of Status2Enum] status Required parameter: Status values that
    # need to be considered for filter
    # @return List of Pet response from the API call
    def find_pets_by_status(status)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/pet/findByStatus'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'status' => status
        },
        array_serialization: Configuration.array_serialization
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
          'Invalid status value',
          _context
        )
      end
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      decoded.map { |element| Pet.from_hash(element) }
    end

    # Muliple tags can be provided with comma separated strings. Use tag1, tag2,
    # tag3 for testing.
    # @param [List of String] tags Required parameter: Tags to filter by
    # @return List of Pet response from the API call
    def find_pets_by_tags(tags)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/pet/findByTags'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'tags' => tags
        },
        array_serialization: Configuration.array_serialization
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
          'Invalid tag value',
          _context
        )
      end
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      decoded.map { |element| Pet.from_hash(element) }
    end

    # Returns a single pet
    # @param [Long] pet_id Required parameter: ID of pet to return
    # @return Pet response from the API call
    def get_pet_by_id(pet_id)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/pet/{petId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'petId' => pet_id
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
          'Invalid ID supplied',
          _context
        )
      elsif _context.response.status_code == 404
        raise APIException.new(
          'Pet not found',
          _context
        )
      end
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      Pet.from_hash(decoded)
    end

    # Updates a pet in the store with form data
    # @param [Long] pet_id Required parameter: ID of pet that needs to be
    # updated
    # @param [String] name Optional parameter: Updated name of the pet
    # @param [String] status Optional parameter: Updated status of the pet
    # @return void response from the API call
    def update_pet_with_form(pet_id,
                             name = nil,
                             status = nil)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/pet/{petId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'petId' => pet_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare form parameters.
      _parameters = {
        'name' => name,
        'status' => status
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        parameters: _parameters
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 405
        raise APIException.new(
          'Invalid input',
          _context
        )
      end
      validate_response(_context)
    end

    # Deletes a pet
    # @param [Long] pet_id Required parameter: Pet id to delete
    # @param [String] api_key Optional parameter: Example:
    # @return void response from the API call
    def delete_pet(pet_id,
                   api_key = nil)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/pet/{petId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'petId' => pet_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'api_key' => api_key
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
        _query_url,
        headers: _headers
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      if _context.response.status_code == 400
        raise APIException.new(
          'Invalid ID supplied',
          _context
        )
      elsif _context.response.status_code == 404
        raise APIException.new(
          'Pet not found',
          _context
        )
      end
      validate_response(_context)
    end

    # uploads an image
    # @param [Long] pet_id Required parameter: ID of pet to update
    # @param [String] additional_metadata Optional parameter: Additional data to
    # pass to server
    # @param [File] file Optional parameter: file to upload
    # @return ApiResponse response from the API call
    def upload_file(pet_id,
                    additional_metadata = nil,
                    file = nil)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/pet/{petId}/uploadImage'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'petId' => pet_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json'
      }

      # Prepare form parameters.
      _parameters = {
        'additionalMetadata' => additional_metadata,
        'file' => file
      }
      _parameters = APIHelper.form_encode_parameters(_parameters)

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: _parameters
      )
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      ApiResponse.from_hash(decoded)
    end
  end
end
