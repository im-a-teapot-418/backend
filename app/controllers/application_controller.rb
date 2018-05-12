class ApplicationController < ActionController::Base

  rescue_from ActionController::ParameterMissing, with: :render_parameter_missing
  rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found

  private

  def render_parameter_missing(error)
    render json: { error: { code: 'parameter_missing', attribute: error.param } }
  end

  def render_record_not_found(error)
    render json: { error: { code: 'record_not_found', text: error.message } }
  end

end
