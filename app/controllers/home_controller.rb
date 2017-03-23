class HomeController < ApplicationController
  def index
  end
  
  def company_index
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end
  
  def find
  end
  
  def redirect
    redirect_to '/'
  end
  
  def show
    @package = Package.find(params[:id])
  end
end
