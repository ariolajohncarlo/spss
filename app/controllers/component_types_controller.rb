class ComponentTypesController < ApplicationController
  before_action :set_component_type, only: [:show, :edit, :update, :destroy]

  # GET /component_types
  # GET /component_types.json
  def index
    if session[:user_id].nil? then
      redirect_to '/'
    end
    @component_types = ComponentType.all
  end

  # GET /component_types/1
  # GET /component_types/1.json
  def show
  end

  # GET /component_types/new
  def new
    if session[:user_id].nil? then
      redirect_to '/'
    end
    @component_type = ComponentType.new
  end

  # GET /component_types/1/edit
  def edit
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # POST /component_types
  # POST /component_types.json
  def create
    @component_type = ComponentType.new(component_type_params)

    if !session[:user_id].nil? then
      respond_to do |format|
        if @component_type.save
          format.html { redirect_to @component_type, notice: 'Component type was successfully created.' }
          format.json { render :show, status: :created, location: @component_type }
        else
          format.html { render :new }
          format.json { render json: @component_type.errors, status: :unprocessable_entity }
        end
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # PATCH/PUT /component_types/1
  # PATCH/PUT /component_types/1.json
  def update
    if !session[:user_id].nil? then
      respond_to do |format|
        if @component_type.update(component_type_params)
          format.html { redirect_to @component_type, notice: 'Component type was successfully updated.' }
          format.json { render :show, status: :ok, location: @component_type }
        else
          format.html { render :edit }
          format.json { render json: @component_type.errors, status: :unprocessable_entity }
        end
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # DELETE /component_types/1
  # DELETE /component_types/1.json
  def destroy
    if !session[:user_id].nil? then
      @component_type.destroy
      respond_to do |format|
        format.html { redirect_to component_types_url, notice: 'Component type was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component_type
      @component_type = ComponentType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def component_type_params
      params.require(:component_type).permit(:type_description)
    end
end
