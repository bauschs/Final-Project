require 'rqrcode'

class QrcsController < ApplicationController
  before_action :set_qrc, only: [:show, :edit, :update, :destroy]
  

  # GET /qrcs
  # GET /qrcs.json
  def index
    @qrcs = Qrc.all
  end
  
  def qrcode
    @qr = RQRCode::QRCode.new(('a'...'z').to_a.concat(('A'...'Z').to_a).concat((0...9).to_a).shuffle[0...7].join)
  end

  # GET /qrcs/1
  # GET /qrcs/1.json
  def show
  end

  # GET /qrcs/new
  def new
    @qrc = Qrc.new
  end

  # GET /qrcs/1/edit
  def edit
  end

  # POST /qrcs
  # POST /qrcs.json
  def create
    @qrc = Qrc.new(qrc_params)

    respond_to do |format|
      if @qrc.save
        format.html { redirect_to @qrc, notice: 'Qrc was successfully created.' }
        format.json { render :show, status: :created, location: @qrc }
      else
        format.html { render :new }
        format.json { render json: @qrc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /qrcs/1
  # PATCH/PUT /qrcs/1.json
  def update
    respond_to do |format|
      if @qrc.update(qrc_params)
        format.html { redirect_to @qrc, notice: 'Qrc was successfully updated.' }
        format.json { render :show, status: :ok, location: @qrc }
      else
        format.html { render :edit }
        format.json { render json: @qrc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qrcs/1
  # DELETE /qrcs/1.json
  def destroy
    @qrc.destroy
    respond_to do |format|
      format.html { redirect_to qrcs_url, notice: 'Qrc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qrc
      @qrc = Qrc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qrc_params
      params.require(:qrc).permit(:code)
    end
end
