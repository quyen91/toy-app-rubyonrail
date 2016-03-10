class HehesController < ApplicationController
  before_action :set_hehe, only: [:show, :edit, :update, :destroy]

  # GET /hehes
  # GET /hehes.json
  def index
    @hehes = Hehe.all
  end

  # GET /hehes/1
  # GET /hehes/1.json
  def show
  end

  # GET /hehes/new
  def new
    @hehe = Hehe.new
  end

  # GET /hehes/1/edit
  def edit
  end

  # POST /hehes
  # POST /hehes.json
  def create
    @hehe = Hehe.new(hehe_params)

    respond_to do |format|
      if @hehe.save
        format.html { redirect_to @hehe, notice: 'Hehe was successfully created.' }
        format.json { render :show, status: :created, location: @hehe }
      else
        format.html { render :new }
        format.json { render json: @hehe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hehes/1
  # PATCH/PUT /hehes/1.json
  def update
    respond_to do |format|
      if @hehe.update(hehe_params)
        format.html { redirect_to @hehe, notice: 'Hehe was successfully updated.' }
        format.json { render :show, status: :ok, location: @hehe }
      else
        format.html { render :edit }
        format.json { render json: @hehe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hehes/1
  # DELETE /hehes/1.json
  def destroy
    @hehe.destroy
    respond_to do |format|
      format.html { redirect_to hehes_url, notice: 'Hehe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hehe
      @hehe = Hehe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hehe_params
      params.require(:hehe).permit(:nana)
    end
end
