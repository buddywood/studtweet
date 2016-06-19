class ConferencesController < ApplicationController
  respond_to :json
  
  def index
    respond_with Conference.all
  end
  
  def show
    respond_with Conference.find(params[:id])
  end
  
  def create
    respond_with Conference.create(params[:entry])
  end
  
  def update
    respond_with Conference.update(params[:id], params[:conference])
  end
  
  def destroy
    respond_with Conference.destroy(params[:id])
  end

end
