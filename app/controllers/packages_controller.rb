class PackagesController < ApplicationController
  before_action :set_package, only: [:show, :edit, :update, :destroy]

  def add
    @component_package = ComponentPackage.new
    @component_package.component_id = params[:component_id]
    @component_package.quantity = params[:quantity]
    @component_package.package_id = params[:id]
    
    @component_package.save
    
    redirect_to "/packages/#{params[:id]}"
  end
  # GET /packages
  # GET /packages.json
  def index
    if session[:user_id].nil? then
      redirect_to '/'
    end
      
    @packages = Package.all
  end

  # GET /packages/1
  # GET /packages/1.json
  def show
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # GET /packages/new
  def new
    if session[:user_id].nil? then
      redirect_to '/'
    end
      
    @package = Package.new
  end

  # GET /packages/1/edit
  def edit
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # POST /packages
  # POST /packages.json
  def create
    @package = Package.new(package_params)
    
    if !session[:user_id].nil? then 
      respond_to do |format|
        if @package.save
          format.html { redirect_to @package, notice: 'Package was successfully created.' }
          format.json { render :show, status: :created, location: @package }
        else
          format.html { render :new }
          format.json { render json: @package.errors, status: :unprocessable_entity }
        end
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # PATCH/PUT /packages/1
  # PATCH/PUT /packages/1.json
  def update
    if !session[:user_id].nil? then 
      respond_to do |format|
        if @package.update(package_params)
          format.html { redirect_to @package, notice: 'Package was successfully updated.' }
          format.json { render :show, status: :ok, location: @package }
        else
          format.html { render :edit }
          format.json { render json: @package.errors, status: :unprocessable_entity }
        end
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # DELETE /packages/1
  # DELETE /packages/1.json
  def destroy
    if !session[:user_id].nil? then 
      @package.destroy
      respond_to do |format|
        format.html { redirect_to packages_url, notice: 'Package was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package
      @package = Package.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def package_params
      params.require(:package).permit(:package_name, :cost)
    end
end
