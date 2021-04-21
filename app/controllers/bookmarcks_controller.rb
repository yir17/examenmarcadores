class BookmarcksController < ApplicationController
  before_action :set_bookmarck, only: %i[ show edit update destroy ]

  # GET /bookmarcks or /bookmarcks.json
  def index
    @bookmarcks = Bookmarck.all
    @bookmarck = Bookmarck.new
    @pie = Bookmarck.count
  end

  # GET /bookmarcks/1 or /bookmarcks/1.json
  def show
    respond_to do |format|
      format.js { render layout: false }
      format.html { render :show }
    end
  end

  # GET /bookmarcks/new
  def new
    @bookmarck = Bookmarck.new
  end

  # GET /bookmarcks/1/edit
  def edit
  end

  # POST /bookmarcks or /bookmarcks.json
  def create
    @bookmarck = Bookmarck.new(bookmarck_params)

    respond_to do |format|
      if @bookmarck.save
        format.html { redirect_to @bookmarck, notice: "Bookmarck was successfully created." }
        format.json { render :show, status: :created, location: @bookmarck }
        format.js 
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bookmarck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookmarcks/1 or /bookmarcks/1.json
  def update
    respond_to do |format|
      if @bookmarck.update(bookmarck_params)
        format.html { redirect_to @bookmarck, notice: "Bookmarck was successfully updated." }
        format.json { render :show, status: :ok, location: @bookmarck }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bookmarck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookmarcks/1 or /bookmarcks/1.json
  def destroy
    @bookmarck.destroy
    respond_to do |format|
      format.html { redirect_to bookmarcks_url, notice: "Bookmarck was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmarck
      @bookmarck = Bookmarck.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookmarck_params
      params.require(:bookmarck).permit(:name, :direction, :category_id, :bookind_id)
    end
end
