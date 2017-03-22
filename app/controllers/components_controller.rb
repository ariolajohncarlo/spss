class ComponentsController < ApplicationController
  before_action :set_component, only: [:show, :edit, :update, :destroy]

  # GET /components
  # GET /components.json
  def index
    if session[:user_id].nil? then
      redirect_to '/'
    end
    @components = Component.all
  end

  # GET /components/1
  # GET /components/1.json
  def show
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # GET /components/new
  def new
    if session[:user_id].nil? then
      redirect_to '/'
    end
    @component = Component.new
  end

  # GET /components/1/edit
  def edit
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # POST /components
  # POST /components.json
  def create
    @component = Component.new(component_params)

    if !session[:user_id].nil? then
      respond_to do |format|
        if @component.save
          format.html { redirect_to @component, notice: 'Component was successfully created.' }
          format.json { render :show, status: :created, location: @component }
        else
          format.html { render :new }
          format.json { render json: @component.errors, status: :unprocessable_entity }
        end
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # PATCH/PUT /components/1
  # PATCH/PUT /components/1.json
  def update
    if !session[:user_id].nil? then
      respond_to do |format|
        if @component.update(component_params)
          format.html { redirect_to @component, notice: 'Component was successfully updated.' }
          format.json { render :show, status: :ok, location: @component }
        else
          format.html { render :edit }
          format.json { render json: @component.errors, status: :unprocessable_entity }
        end
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # DELETE /components/1
  # DELETE /components/1.json
  def destroy
    if !session[:user_id].nil? then
      @component.destroy
      respond_to do |format|
        format.html { redirect_to components_url, notice: 'Component was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component
      @component = Component.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def component_params
      params.require(:component).permit(:component_id, :component_description, :component_type_id, :quantity, :cost, :retail_price, :supplier_id)
    end
end
