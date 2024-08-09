class ListsController < ApplicationController
  before_action :authenticate_user!

  # GET /lists
  def index
    @lists = List.all

    render json: @lists
  end

  # # GET /posts/1
  # def show
  #   render json: @post
  # end

  # POST /posts
  def create
    @list = List.new(list_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end
end
