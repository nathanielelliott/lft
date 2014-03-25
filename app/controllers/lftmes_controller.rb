class LftmesController < ApplicationController
  before_action :set_lftme, only: [:show, :edit, :update, :destroy]

  # GET /lftmes
  # GET /lftmes.json
  def index
    @lftmes = Lftme.all
  end

  # GET /lftmes/1
  # GET /lftmes/1.json
  def show
  end

  # GET /lftmes/new
  def new
    @lftme = Lftme.new
  end

  # GET /lftmes/1/edit
  def edit
  end

  # POST /lftmes
  # POST /lftmes.json
  def create
    @lftme = Lftme.new(lftme_params)

    respond_to do |format|
      if @lftme.save
        format.html { redirect_to @lftme, notice: 'Lftme was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lftme }
      else
        format.html { render action: 'new' }
        format.json { render json: @lftme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lftmes/1
  # PATCH/PUT /lftmes/1.json
  def update
    respond_to do |format|
      if @lftme.update(lftme_params)
        format.html { redirect_to @lftme, notice: 'Lftme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lftme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lftmes/1
  # DELETE /lftmes/1.json
  def destroy
    @lftme.destroy
    respond_to do |format|
      format.html { redirect_to lftmes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lftme
      @lftme = Lftme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lftme_params
      params.require(:lftme).permit(:user, :request, :location)
    end
end
