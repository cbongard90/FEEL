class BoxesController < ApplicationController
  before_action :set_box, only: %i[show edit create]

  def index
    @boxes = Box.all
  end

  def show
    return unless current_user.id != @box.user_id
  end

  def new
    @box = Box.new
  end

  def create
  end

  def update
  end

  private

  def set_box
    @box = Box.find(params[:id])
  end

  def box_params
    params.require(:box).permit(:name, :description, :user_id, :receiver_id)
  end
end
