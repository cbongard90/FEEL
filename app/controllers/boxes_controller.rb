class BoxesController < ApplicationController
  before_action :set_box, only: %i[show edit]

  def index
    @boxes = Box.all
  end

  def show
    return unless current_user.id != @box.user_id
  end

  def new
    @box = Box.new
    @receiver = Receiver.new
  end

  def create
    @box = Box.new(box_params)
    @box.user_id = current_user.id

    if @box.save
      redirect_to @box
    else
      render 'new'
    end
  end

  def update
  end

  private

  def set_box
    @box = Box.find(params[:id])
  end

  def box_params
    params.require(:box).permit(:message, :is_public, :user_id, :receiver_name, documents: [])
  end
end
