class MuppetsController < ApplicationController
  respond_to :html

  def index
    @muppets = Muppet.all
    respond_with @muppets
  end

  def new
    @muppet = Muppet.new
    respond_with @muppet
  end

  def create
    @muppet = Muppet.create params[:muppet]
    respond_with @muppet
  end

  def show
    @muppet = Muppet.find params[:id]
    respond_with @muppet
  end

  def edit
    @muppet = Muppet.find params[:id]
    respond_with @muppet
  end

  def update
    @muppet = Muppet.find params[:id]
    @muppet.update_attributes params[:muppet]
    respond_with @muppet
  end

  def destroy
    @muppet = Muppet.find params[:id]
    @muppet.destroy
    respond_with @muppet
  end
end
