module Response
  def json_response(object, status=:ok)
    render json: object, status: status
    # render json: TodoSerializer.new(object), status: status
  end
end
