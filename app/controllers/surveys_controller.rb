class SurveysController < ApplicationController
  def index
  	@survey =Survey.all
    @user = User.all
  end

  def new
  	@questions = Question.all
    @survey = Survey.new
  end

  def create
    

  #@survey =Survey.new(params[:survey_params])
   #if @survey.save

    # redirect_to :action => 'index'

    #else
     #render 'new'
     #params[:questions] = params[:questions].to_i
#@survey =Survey.new(params[:survey_params])
 #   if @question.id.save
  #    redirect_to :action => 'index'
   # else
    #  render 'new'
    #end
  #end

  params[:survey][:questions].each do |s|
    survey =Survey.new
    survey.question_id = s[0]
    survey.options = s[1]
    survey.user_id = session[:id]
    survey.name = session[:name]
    survey.save
  end  
  render :action => 'index'
  #render json:params[:survey][:questions]

  
    


end

#@survey =Survey.new(params[:survey_params])
 #   if @survey.save
#
 #     redirect_to :action => 'index'

  #  else
   #   render 'new'
    #  params[:questions] = params[:questions].to_i
  def edit
  end

  def show

  end

  private
  
  def survey_params
  	params.require(:survey).permit(:name)
  end
end