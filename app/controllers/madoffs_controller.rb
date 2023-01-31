class MadoffsController < ApplicationController
  before_action :set_madoff, only: %i[ show edit update destroy ]

  # GET /madoffs or /madoffs.json
  def index
    @madoffs = Madoff.all
  end

  # GET /madoffs/1 or /madoffs/1.json
  def show
  end

  # GET /madoffs/new
  def new
    @madoff = Madoff.new
  end

  # GET /madoffs/1/edit
  def edit
  end

  # POST /madoffs or /madoffs.json
  def create
    @madoff = Madoff.new(madoff_params)

    respond_to do |format|
      if @madoff.save
        format.html { redirect_to madoff_url(@madoff), notice: "Madoff was successfully created." }
        format.json { render :show, status: :created, location: @madoff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @madoff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /madoffs/1 or /madoffs/1.json
  def update
    respond_to do |format|
      if @madoff.update(madoff_params)
        format.html { redirect_to madoff_url(@madoff), notice: "Madoff was successfully updated." }
        format.json { render :show, status: :ok, location: @madoff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @madoff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /madoffs/1 or /madoffs/1.json
  def destroy
    @madoff.destroy

    respond_to do |format|
      format.html { redirect_to madoffs_url, notice: "Madoff was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_madoff
      @madoff = Madoff.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def madoff_params
      params.require(:madoff).permit(:name, :age, :company_name, :con, :wiki_link, :upvotes, :current_status)
    end
end
