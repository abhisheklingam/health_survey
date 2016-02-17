class UsersController < ApplicationController
  #before_action :set_user, only: [:show,:edit,:update,:destroy]
  def index

  	@user =User.all
  end

  def new
  	@user=User.new
  end

  def create
  	params.permit!
  	@user =User.new(params[:user])

  		 @user.save

  		 
       session[:name] =  @user.name
       session[:id] = @user.id
       session[:dob]= @user.dob
        session[:id] = @user.id
        session[:mob]= @user.mob
        session[:id] = @user.id
        
        redirect_to new_survey_path
  			#format.html {redirect_to @user, notice: 'user is created successfully '}

     #else

     	#render 'new'
     #end

end


  def edit
  end

  def show
  end
   private
   def user_params
     params.require(:user).permit
    end
end
