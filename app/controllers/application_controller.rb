class ApplicationController < ActionController::API
  include ActionController::Cookies
rescue_frome ActiveRecord::RecordNotFound, with: :not_found
rescue_from ActiveRecord::RecordInvalid,with: :not_valid

private

def not_found exceptions
  render json: {error: "#{exceptions.model}not found"}, status: 404
end

def not_valid invalid 
  render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
end

end
