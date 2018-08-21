class ErrorsController < ApplicationController
  def not_found
    render :status => 404
  end

  def internal_error
    render :status => 500
  end

  def unacceptable
    render :status => 422
  end
end
