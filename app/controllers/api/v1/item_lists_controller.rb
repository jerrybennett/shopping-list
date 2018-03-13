class Api::V1::ItemListsController < ApplicationController
  before_action :set_item_list, only: [:show, :update, :destroy]

  # GET /item_lists
  def index
    @item_lists = ItemList.all

    render json: @item_lists
  end

  # GET /item_lists/1
  def show
    render json: @item_list
  end

  # POST /item_lists
  def create
    @item_list = ItemList.new(item_list_params)

    if @item_list.save
      render json: @item_list, status: :created, location: @item_list
    else
      render json: @item_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /item_lists/1
  def update
    if @item_list.update(item_list_params)
      render json: @item_list
    else
      render json: @item_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /item_lists/1
  def destroy
    @item_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_list
      @item_list = ItemList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_list_params
      params.require(:item_list).permit(:list_id, :item_id)
    end
end
