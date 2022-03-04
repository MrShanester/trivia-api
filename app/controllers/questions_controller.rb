class QuestionsController < ApplicationController
  def index
    output = Question.all 
    render json: output.as_json
  end

  def show
    output = Question.find_by(id:  params["id"])
    render json: output.as_json
  end

  def create
    output = Question.new(answer: params["answer"])
    if output.save
      render json: output
    else 
      render json: {error: output.errors.full_messages}, status: 406
    end
  end

  def update
    output = Quesion.find_by(id: params["id"])
    output.answer = params["answer"] || output.answer
    if output.save
      render json: output
    else 
      render json: {error: output.errors.full_messages}, status: 406
    end
  end

  def destroy
    output = Question.find_by id: params["id"]
    output.destroy
    render json: {message: "output Annihilated"}
  end
end
