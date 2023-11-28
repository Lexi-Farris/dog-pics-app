class PicsController < ApplicationController

  def index
    @pics= Pic.all 
    render :index 
  end

  def create
    @pic = Pic.create(
      name: params[:name], 
      url: params[:url],
      description: params[:description],
      native_region_id: params[:native_region_id]

    )
    if @pic.valid?
      render :show
    else
      render json: {errors: @pic.errors.full_messages}, status: 422
    end
  end


  def show
    @pic = Pic.find_by(id: params[:id])
    render :show
  end

  def update
    @pic = Pic.find_by(id: params[:id])
    @pic.update( 
      name: params[:name] || @pic.name,
      url: params[:url] || @pic.url,
      description: params[:description] || @pic.description,
      # On the front end, add drop down to display continent name to users
      native_region_id: params[:native_region_id] || @pic.native_region_id
    )
    
    if @pic.valid?
      render :show 
    else 
      render json: {errors: @pic.errors.full_messages}, status: 422
    end
  
  end

  def destroy
    @pic = Pic.find_by(id: params[:id])
    @pic.destroy

    render json: {message: "Item successfully removed"}

  end






end
