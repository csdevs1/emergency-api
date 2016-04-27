module Api
    module V1
        class StatesController < ApplicationController
            respond_to :json
            
            # Full list of status codes can be found at https://en.wikipedia.org/wiki/List_of_HTTP_status_codes, but you’re most likely to use only limited subset of them:

            # 200 - :ok
            # 204 - :no_content
            # 400 - :bad_request
            # 403 - :forbidden
            # 401 - :unauthorized
            # 404 - :not_found
            # 410 - :gone
            # 422 - :unprocessable_entity
            # 500 - :internal_server_error
            
            def index
                @states = State.all
                respond_with @states
            end
        end
    end
end