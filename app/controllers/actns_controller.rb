class ActnsController < ApplicationController
def new
  	@actn = Actn.new
    @matters = Matter.all
  end

  def create
  	Actn.create(actn_params)
    redirect_to actns_path
  end

  def index
  	@actns = Actn.all.order(:title)
  end

  def show
  	@actn = Actn.find(params[:id])
  end

  def update
  	Actn.find(params[:id]).update(actn_params)
    redirect_to actns_path
  end

  def edit
    @actn = Actn.find(params[:id])
  end

  def destroy
  	@actn_to_delete = Actn.find(params[:id])
  	@actn_to_delete.matters.clear
  	@actn_to_delete.delete
  	redirect_to actns_path
  end

  private

  def actn_params
  	params.require(:actn).permit(:title, :description, :open, :closed, :duration, :location, :matter_ids => [])
  end
end
