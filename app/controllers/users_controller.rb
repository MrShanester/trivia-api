class UsersController < ApplicationController
  def index
    output = User.all
    render json: output.as_json
  end

  def show
    output = User.find_by(id: params[id:])
    render json: output.as_json
  end

  def create
    output = User.new(username: params[username:], points: 0)
    if output.save
      render json: {message: "User created successfully"}
    else
      render json: {message: "U Failure"}
    end
  end

  def update
    output = User.find_by id: params[id:]
    output.username = params[username:] || output.username
    output.points = output.points
    if output.save
      render json: {message: "User updated successfully"}
    else
      render json: {message: "U Failure"}
    end
  end

  def destroy
    output = User.find_by(id: params[id:])
    output.delete
    render json: {message: "L + Ratio"}
  end
end
