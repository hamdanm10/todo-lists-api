class ItemsController < ApplicationController
  before_action :authenticate_user!

  before_action :set_item, only: %i[show update delete]

  # GET /items
  def index
    @items = Item.all

    render json: @items
  end

  # GET /items/:id
  def show
    render json: @item
  end

  # POST /items
  def create
    @item = Item.new(item_params)

    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1/delete
  def delete
    if @item.update(deleted_at: Time.current)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_item
    @item = Item.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def item_params
    params.require(:item).permit(:list_id, :title, :is_checked_flag)
  end
end
