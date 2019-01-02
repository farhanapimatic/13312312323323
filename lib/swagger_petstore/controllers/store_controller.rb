module SwaggerPetstore
  # StoreController
  class StoreController < BaseController
    @instance = StoreController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Returns a map of status codes to quantities
    # @return Array<String, Integer> response from the API call
    def get_inventory
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/store/inventory'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      _context = execute_request(_request)
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Place an order for a pet
    # @param [Order] body Required parameter: order placed for purchasing the
    # pet
    # @return Order response from the API call
    def create_place_order(body)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/store/order'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'accept' => 'application/json',
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
      if _context.response.status_code == 400
        raise APIException.new(
          'Invalid Order',
          _context
        )
      end
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      Order.from_hash(decoded)
    end

    # For valid response try integer IDs with value >= 1 and <= 10. Other values
    # will generated exceptions
    # @param [Long] order_id Required parameter: ID of pet that needs to be
    # fetched
    # @return Order response from the API call
    def get_order_by_id(order_id)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/store/order/{orderId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'orderId' => order_id
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
          'Order not found',
          _context
        )
      end
      validate_response(_context)

      # Return appropriate response type.
      decoded = APIHelper.json_deserialize(_context.response.raw_body)
      Order.from_hash(decoded)
    end

    # For valid response try integer IDs with positive integer value. Negative
    # or non-integer values will generate API errors
    # @param [Long] order_id Required parameter: ID of the order that needs to
    # be deleted
    # @return void response from the API call
    def delete_order(order_id)
      # Prepare query url.
      _query_builder = Configuration.get_base_uri
      _query_builder << '/store/order/{orderId}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'orderId' => order_id
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
          'Invalid ID supplied',
          _context
        )
      elsif _context.response.status_code == 404
        raise APIException.new(
          'Order not found',
          _context
        )
      end
      validate_response(_context)
    end
  end
end
