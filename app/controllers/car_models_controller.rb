class CarModelsController < ApplicationController
  before_action :set_car_model, only: %i[ show edit update destroy ]

  # GET /car_models or /car_models.json
  def index
    @car_models = CarModel.all
  end

  # GET /car_models/1 or /car_models/1.json
  def show
  end

  # GET /car_models/new
  def new
    @car_model = CarModel.new
  end

  # GET /car_models/1/edit
  def edit
  end

  # POST /car_models or /car_models.json
  def create
    @car_model = CarModel.new(car_model_params)

    respond_to do |format|
      if @car_model.save
        format.html { redirect_to car_model_url(@car_model), notice: "Car model was successfully created." }
        format.json { render :show, status: :created, location: @car_model }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @car_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_models/1 or /car_models/1.json
  def update
    respond_to do |format|
      if @car_model.update(car_model_params)
        format.html { redirect_to car_model_url(@car_model), notice: "Car model was successfully updated." }
        format.json { render :show, status: :ok, location: @car_model }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @car_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_models/1 or /car_models/1.json
  def destroy
    @car_model.destroy!

    respond_to do |format|
      format.html { redirect_to car_models_url, notice: "Car model was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_model
      @car_model = CarModel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_model_params
      params.require(:car_model).permit(:model, :car_make_id, :body_type_id)
    end
end
