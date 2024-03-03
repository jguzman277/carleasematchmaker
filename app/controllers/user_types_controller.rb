class UserTypesController < ApplicationController
    before_action :set_user_type, only: %i[ show edit update destroy ]

    def index
        @user_types = UserType.all.order(name: :asc)
    end

    def show
    end

    def new
        @user_type = UserType.new
    end

    def create
        @user_type = UserType.new(user_type_params)

        respond_to do |format|
            if @user_type.save
                format.html { redirect_to user_type_url(@user_type), notice: "User Type was successfully created." }
                format.json { render :show, status: :created, location: @user_type }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @user_type.errors, status: :unprocessable_entity }
            end
        end
    end

    def edit

    end

    def update
        respond_to do |format|
            if @user_type.update(user_type_params)
              format.html { redirect_to user_type_url(@user_type), notice: "User Type was successfully updated." }
              format.json { render :show, status: :ok, location: @user_type }
            else
              format.html { render :edit, status: :unprocessable_entity }
              format.json { render json: @user_type.errors, status: :unprocessable_entity }
            end
          end
    end

    def destroy
        @user_type.destroy!

        respond_to do |format|
            format.html { redirect_to user_types_url, notice: "User Type was successfully deleted." }
            format.json { head :no_content }
        end
    end

    private

    def set_user_type
        @user_type = UserType.find(params[:id])
    end

    def user_type_params
        params.require(:user_type).permit(:name)
    end

end
