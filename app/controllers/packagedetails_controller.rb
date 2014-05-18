class PackagedetailsController < ApplicationController
  before_action :set_packagedetail, only: [:show, :edit, :update, :destroy]

  # GET /packagedetails
  # GET /packagedetails.json
  def index
    @packagedetails = Packagedetail.all
  end

  # GET /packagedetails/1
  # GET /packagedetails/1.json
  def show
  end

  # GET /packagedetails/new
  def new
    @packagedetail = Packagedetail.new
  end

  # GET /packagedetails/1/edit
  def edit
  end

  # POST /packagedetails
  # POST /packagedetails.json
  def create
    @packagedetail = Packagedetail.new(packagedetail_params)

    respond_to do |format|
      if @packagedetail.save
        format.html { redirect_to @packagedetail, notice: 'Packagedetail was successfully created.' }
        format.json { render :show, status: :created, location: @packagedetail }
      else
        format.html { render :new }
        format.json { render json: @packagedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /packagedetails/1
  # PATCH/PUT /packagedetails/1.json
  def update
    respond_to do |format|
      if @packagedetail.update(packagedetail_params)
        format.html { redirect_to @packagedetail, notice: 'Packagedetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @packagedetail }
      else
        format.html { render :edit }
        format.json { render json: @packagedetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /packagedetails/1
  # DELETE /packagedetails/1.json
  def destroy
    @packagedetail.destroy
    respond_to do |format|
      format.html { redirect_to packagedetails_url, notice: 'Packagedetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_packagedetail
      @packagedetail = Packagedetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def packagedetail_params
      params.require(:packagedetail).permit(:tracking, :length, :width, :height, :piece_weight)
    end
end
