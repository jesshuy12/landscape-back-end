class TypesController < ApplicationController

  def show
    @type = Type.find(id: params[:id])
    render json: @type
  end

  def index
    @types = Type.all
    render json: @types
  end

end
