class Api::V1::UserListsController < ApplicationController
  before_action :set_user_list, only: [:show, :update, :destroy]

  # GET /user_lists
  def index
    @user_lists = UserList.all

    render json: @user_lists
  end

  # GET /user_lists/1
  def show
    render json: @user_list
  end

  # POST /user_lists
  def create
    @user_list = UserList.new(user_list_params)

    if @user_list.save
      render json: @user_list, status: :created, location: @user_list
    else
      render json: @user_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_lists/1
  def update
    if @user_list.update(user_list_params)
      render json: @user_list
    else
      render json: @user_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_lists/1
  def destroy
    @user_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_list
      @user_list = UserList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_list_params
      params.require(:user_list).permit(:user_id, :list_id)
    end
end
