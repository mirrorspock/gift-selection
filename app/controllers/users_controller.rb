class UsersController < ApplicationController

  # http_basic_authenticate_with name: "hr", password: "secret", except: [:index, :show]


  def index
    if params[:unique_code] == 'ivonne=admin'
      @users = User.all
      return
    end

    if params[:unique_code]
      redirect_to user_path(unique_code: params[:unique_code])
    else
      redirect_to root_url
    end  
    
  end

  def show
    #TODO check if already saved or wrong code
    
    @user = User.where(unique_code: params[:unique_code]).first
    if @user.nil? then
      redirect_to root_url, notice: "Onbekende code"
      return
    end
    if @user.choice then
      
      redirect_to root_url, notice: "Code reeds gebruikt, keuze: #{@user.choice} kan niet veranderd worden."
      return
    end
    
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.where(unique_code: params[:unique_code]).first
    respond_to do |format|
      if @user.update choice: params[:user][:choice]
        format.html { redirect_to thanks_url, notice: "#{params[:user][:choice]}.png"}
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
