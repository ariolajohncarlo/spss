class SuppliersController < ApplicationController
  before_action :set_supplier, only: [:show, :edit, :update, :destroy]

  # GET /suppliers
  # GET /suppliers.json
  def index
    if session[:user_id].nil? then
      redirect_to '/'
    end
    
    @suppliers = Supplier.all
  end

  # GET /suppliers/1
  # GET /suppliers/1.json
  def show
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # GET /suppliers/new
  def new
    if session[:user_id].nil? then
      redirect_to '/'
    end
    @supplier = Supplier.new
  end

  # GET /suppliers/1/edit
  def edit
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # POST /suppliers
  # POST /suppliers.json
  def create
    @supplier = Supplier.new(supplier_params)
    
    if !session[:user_id].nil? then
      respond_to do |format|
        if @supplier.save
          format.html { redirect_to @supplier, notice: 'Supplier was successfully created.' }
          format.json { render :show, status: :created, location: @supplier }
        else
          format.html { render :new }
          format.json { render json: @supplier.errors, status: :unprocessable_entity }
        end
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # PATCH/PUT /suppliers/1
  # PATCH/PUT /suppliers/1.json
  def update
    if !session[:user_id].nil? then
      respond_to do |format|
        if @supplier.update(supplier_params)
          format.html { redirect_to @supplier, notice: 'Supplier was successfully updated.' }
          format.json { render :show, status: :ok, location: @supplier }
        else
          format.html { render :edit }
          format.json { render json: @supplier.errors, status: :unprocessable_entity }
        end
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  # DELETE /suppliers/1
  # DELETE /suppliers/1.json
  def destroy
    if !session[:user_id].nil? then
      @supplier.destroy
      respond_to do |format|
        format.html { redirect_to suppliers_url, notice: 'Supplier was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
    
    if session[:user_id].nil? then
      redirect_to '/'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier
      @supplier = Supplier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplier_params
      params.require(:supplier).permit(:company_code, :company_name, :address, :contact_number)
    end
end
