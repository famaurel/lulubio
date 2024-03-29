# do not forget to delete public/{404, 422, 500}.html
# rm public/{404, 422, 500}.html
class ErrorsController < ApplicationController
  skip_before_action :authenticate_user!

  def not_found
    render status: 404
  end

  def unacceptable
    render status: 422
  end

  def internal_server_error
    render status: 500
  end
end
