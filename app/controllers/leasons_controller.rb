class LeasonsController < ApplicationController
  before_action :set_leason, only: [:show, :edit, :update, :destroy]

  # GET /leasons
  # GET /leasons.json
  def index
    @leasons = Leason.all
  end

  # GET /leasons/1
  # GET /leasons/1.json
  def show
  end

  # GET /leasons/new
  def new
    @leason = Leason.new
  end

  # GET /leasons/1/edit
  def edit
  end

  # POST /leasons
  # POST /leasons.json
  def create
    @leason = Leason.new(leason_params)

    respond_to do |format|
      if @leason.save
        format.html { redirect_to @leason, notice: 'Leason was successfully created.' }
        format.json { render :show, status: :created, location: @leason }
      else
        format.html { render :new }
        format.json { render json: @leason.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leasons/1
  # PATCH/PUT /leasons/1.json
  def update
    respond_to do |format|
      if @leason.update(leason_params)
        format.html { redirect_to @leason, notice: 'Leason was successfully updated.' }
        format.json { render :show, status: :ok, location: @leason }
      else
        format.html { render :edit }
        format.json { render json: @leason.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leasons/1
  # DELETE /leasons/1.json
  def destroy
    @leason.destroy
    respond_to do |format|
      format.html { redirect_to leasons_url, notice: 'Leason was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leason
      @leason = Leason.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leason_params
      params.require(:leason).permit(:class_name, :start, :end)
    end
end
