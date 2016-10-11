class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    #TODO check if already saved
    @user = User.where(unique_code: params[:unique_code]).first
    
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.where(unique_code: params[:unique_code]).first
    respond_to do |format|
      if @user.update choice: params[:user][:choice].to_i
        format.html { redirect_to thanks_url, notice: "Keuze #{params[:user][:choice]} is opgeslagen " }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:choice)
    end
end