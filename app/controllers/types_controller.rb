class TypesController < ApplicationController
  before_action :set_type, only: [:show, :edit, :update, :destroy]

  # GET /types
  # GET /types.json
  def index
    if session[:user_id].nil? then
      redirect_to '/'
    end
    
    @types = Type.all
  end

  # GET /types/1
  # GET /types/1.json
  def show
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # GET /types/new
  def new
    if session[:user_id].nil? then
      redirect_to '/'
    end
    @type = Type.new
  end

  # GET /types/1/edit
  def edit
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # POST /types
  # POST /types.json
  def create
    @type = Type.new(type_params)
    
    if !session[:user_id].nil? then
      respond_to do |format|
        if @type.save
          format.html { redirect_to @type, notice: 'Type was successfully created.' }
          format.json { render :show, status: :created, location: @type }
        else
          format.html { render :new }
          format.json { render json: @type.errors, status: :unprocessable_entity }
        end
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # PATCH/PUT /types/1
  # PATCH/PUT /types/1.json
  def update
    
    if !session[:user_id].nil? then
      respond_to do |format|
        if @type.update(type_params)
          format.html { redirect_to @type, notice: 'Type was successfully updated.' }
          format.json { render :show, status: :ok, location: @type }
        else
          format.html { render :edit }
          format.json { render json: @type.errors, status: :unprocessable_entity }
        end
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # DELETE /types/1
  # DELETE /types/1.json
  def destroy
    
    if !session[:user_id].nil? then
      @type.destroy
      respond_to do |format|
        format.html { redirect_to types_url, notice: 'Type was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type
      @type = Type.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_params
      params.require(:type).permit(:user_type, :user_description)
    end
end
