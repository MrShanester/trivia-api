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
    if product.save
      render json: product
    else 
      render json: {error: product.errors.full_messages}, status: 406
    end
  end

  def update
    output = Option.find_by(id: params["id"])
    product.question_id == product.question_id
    product.option = params["option"] || product.option
    if product.save
      render json: product
    else 
      render json: {error: product.errors.full_messages}, status: 406
    end
  end

  def destroy
    output = Option.find_by id: params["id"]
    output.destroy
    render json: {message: "output Annihilated"}
  end
end
