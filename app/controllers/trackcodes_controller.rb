class TrackcodesController < ApplicationController
  before_action :set_trackcode, only: [:show, :edit, :update, :destroy]

  # GET /trackcodes
  # GET /trackcodes.json
  def index
    @trackcodes = Trackcode.all
  end

  # GET /trackcodes/1
  # GET /trackcodes/1.json
  def show
  end

  # GET /trackcodes/new
  def new
    @trackcode = Trackcode.new
  end

  # GET /trackcodes/1/edit
  def edit
  end

  # POST /trackcodes
  # POST /trackcodes.json
  def create
    @trackcode = Trackcode.new(trackcode_params)

    respond_to do |format|
      if @trackcode.save
        format.html { redirect_to @trackcode, notice: 'Trackcode was successfully created.' }
        format.json { render :show, status: :created, location: @trackcode }
      else
        format.html { render :new }
        format.json { render json: @trackcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trackcodes/1
  # PATCH/PUT /trackcodes/1.json
  def update
    respond_to do |format|
      if @trackcode.update(trackcode_params)
        format.html { redirect_to @trackcode, notice: 'Trackcode was successfully updated.' }
        format.json { render :show, status: :ok, location: @trackcode }
      else
        format.html { render :edit }
        format.json { render json: @trackcode.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trackcodes/1
  # DELETE /trackcodes/1.json
  def destroy
    @trackcode.destroy
    respond_to do |format|
      format.html { redirect_to trackcodes_url, notice: 'Trackcode was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trackcode
      @trackcode = Trackcode.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trackcode_params
      params.require(:trackcode).permit(:description)
    end
end
