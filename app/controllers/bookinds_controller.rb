class BookindsController < ApplicationController
  before_action :set_bookind, only: %i[ show edit update destroy ]

  # GET /bookinds or /bookinds.json
  def index
    @bookinds = Bookind.all
  end

  # GET /bookinds/1 or /bookinds/1.json
  def show
  end

  # GET /bookinds/new
  def new
    @bookind = Bookind.new
  end

  # GET /bookinds/1/edit
  def edit
  end

  # POST /bookinds or /bookinds.json
  def create
    @bookind = Bookind.new(bookind_params)

    respond_to do |format|
      if @bookind.save
        format.html { redirect_to @bookind, notice: "Bookind was successfully created." }
        format.json { render :show, status: :created, location: @bookind }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bookind.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookinds/1 or /bookinds/1.json
  def update
    respond_to do |format|
      if @bookind.update(bookind_params)
        format.html { redirect_to @bookind, notice: "Bookind was successfully updated." }
        format.json { render :show, status: :ok, location: @bookind }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bookind.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookinds/1 or /bookinds/1.json
  def destroy
    @bookind.destroy
    respond_to do |format|
      format.html { redirect_to bookinds_url, notice: "Bookind was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookind
      @bookind = Bookind.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookind_params
      params.require(:bookind).permit(:name)
    end
end
