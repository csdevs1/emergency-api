class ApplicationController < ActionController::Base
    after_filter :cors_set_access_control_headers
    
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception
    
    def cors_set_access_control_headers
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
    end
    
    def options
        head :status => 200, :'Access-Control-Allow-Headers' => 'accept, content-type'
    end
end
