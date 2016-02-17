class QuestionsController < ApplicationController
 def index
  	@question=Question.all
  end

  def new
  	@question =Question.new
  #  render json: @question
  end

  def create
    
  	params.permit!
  	@question =Question.new(params[:question])
  	if @question.save
  		redirect_to :action => 'index'
  	else
      render 'new'
      
  	end
  end

  def destroy
  	@question =Question.find(params[:id])
  	@question.delete
    redirect_to :action => "index"
 end 

  def edit
  	@question=Question.find(params[:id])
  end



  def update
    params.permit!
    @question=Question.find(params[:id])
    if @question.update_attributes(params[:question])
       redirect_to :action => "index"
       
     else
      render "edit"
    end
  end

  def answerpage
  	@question = Question.all
  end

  


  def show
  end

  private
  def question_params
  	params.require(:question).permit
  end
end





