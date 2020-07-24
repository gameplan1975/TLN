class QuizesController < ApplicationController
  def index
    @quizes = Quiz.all
  end
  def show
    @Quiz = Quiz.find_by(id: params[:id])
  end

  def new
    @Quiz = Quiz.new
  end

  def edit
  end

  def create
    @Quiz = Quiz.new(Quiz_params)

    if @Quiz.save
      redirect_to Quizs_url
    else
      render :new
    end
  end

  def update
    unless @Quiz.user_id == current_user.id
      redirect_to "/"
    end
    if @Quiz.update(Quiz_params)
      redirect_to @Quiz
    else
      render :edit
    end
  end

  def destroy
    @Quiz.destroy
    redirect_to Quizs_url
  end

  private
  def set_Quiz
    @Quiz = Quiz.find(params[:id])
  end

  def Quiz_params
    params.require(:Quiz).permit(:name)
  end

end
