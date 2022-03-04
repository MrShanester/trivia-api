class OptionsController < ApplicationController
  def index
    output = Option.all 
    render json: output.as_json
  end

  def show
    output = Option.find_by(id:  params["id"])
    render json: output.as_json
  end

  def create
    output = Option.new(question_id: params["question_id"], option: params["option"])
    if output.save
      render json: output
    else 
      render json: {error: output.errors.full_messages}, status: 406
    end
  end

  def update
    output = Option.find_by(id: params["id"])
    output.question_id == output.question_id
    output.option = params["option"] || output.option
    if output.save
      render json: output
    else 
      render json: {error: output.errors.full_messages}, status: 406
    end
  end

  def destroy
    output = Option.find_by id: params["id"]
    output.destroy
    render json: {message: "output Annihilated"}
  end
end
