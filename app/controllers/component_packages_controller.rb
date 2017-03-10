class ComponentPackagesController < ApplicationController
  before_action :set_component_package, only: [:show, :edit, :update, :destroy]

  # GET /component_packages
  # GET /component_packages.json
  def index
    @component_packages = ComponentPackage.all
  end

  # GET /component_packages/1
  # GET /component_packages/1.json
  def show
  end

  # GET /component_packages/new
  def new
    @component_package = ComponentPackage.new
  end

  # GET /component_packages/1/edit
  def edit
  end

  # POST /component_packages
  # POST /component_packages.json
  def create
    @component_package = ComponentPackage.new(component_package_params)

    respond_to do |format|
      if @component_package.save
        format.html { redirect_to @component_package, notice: 'Component package was successfully created.' }
        format.json { render :show, status: :created, location: @component_package }
      else
        format.html { render :new }
        format.json { render json: @component_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /component_packages/1
  # PATCH/PUT /component_packages/1.json
  def update
    respond_to do |format|
      if @component_package.update(component_package_params)
        format.html { redirect_to @component_package, notice: 'Component package was successfully updated.' }
        format.json { render :show, status: :ok, location: @component_package }
      else
        format.html { render :edit }
        format.json { render json: @component_package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /component_packages/1
  # DELETE /component_packages/1.json
  def destroy
    @component_package.destroy
    respond_to do |format|
      format.html { redirect_to component_packages_url, notice: 'Component package was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_component_package
      @component_package = ComponentPackage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def component_package_params
      params.require(:component_package).permit(:component_id, :package_id, :quantity)
    end
end
