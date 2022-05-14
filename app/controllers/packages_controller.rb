class PackagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  # should validate that the size belongs in the array of sizes

  def index
    @packages = Package.all
  end

  def show
    @package = Package.find(params[:id])
  end
end
