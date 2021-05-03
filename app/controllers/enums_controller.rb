class EnumsController < ApplicationController
  before_action :set_enum, only: %i[ show edit update destroy ]

  # GET /enums or /enums.json
  def index
    @enums = Enum.all
  end

  # GET /enums/1 or /enums/1.json
  def show
  end

  # GET /enums/new
  def new
    @enum = Enum.new
  end

  # GET /enums/1/edit
  def edit
  end

  # POST /enums or /enums.json
  def create
    @enum = Enum.new(enum_params)

    respond_to do |format|
      if @enum.save
        format.html { redirect_to @enum, notice: "Enum was successfully created." }
        format.json { render :show, status: :created, location: @enum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @enum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enums/1 or /enums/1.json
  def update
    respond_to do |format|
      if @enum.update(enum_params)
        format.html { redirect_to @enum, notice: "Enum was successfully updated." }
        format.json { render :show, status: :ok, location: @enum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @enum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enums/1 or /enums/1.json
  def destroy
    @enum.destroy
    respond_to do |format|
      format.html { redirect_to enums_url, notice: "Enum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enum
      @enum = Enum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enum_params
      params.require(:enum).permit(:title, :content, :status)
    end
end
