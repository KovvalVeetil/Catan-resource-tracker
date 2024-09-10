class ResourcesController < ApplicationController
    before_action :set_player
    before_action :set_resource, only: [:show, :edit, :update, :destroy]
  
    def index
      @resources = @player.resources
    end
  
    def show
    end
  
    def new
      @resource = @player.resources.build
    end
  
    def create
      @resource = @player.resources.build(resource_params)
  
      if @resource.save
        redirect_to player_resources_path(@player), notice: 'Resource was successfully created.'
      else
        render :new
      end
    end
  
    def edit
    end
  
    def update
      if @resource.update(resource_params)
        redirect_to player_resources_path(@player), notice: 'Resource was successfully updated.'
      else
        render :edit
      end
    end
  

    def destroy
      @resource.destroy
      redirect_to player_resources_path(@player), notice: 'Resource was successfully destroyed.'
    end
  
    private
  
    def set_player
      @player = Player.find(params[:player_id])
    end
  
    def set_resource
      @resource = @player.resources.find(params[:id])
    end
  
    def resource_params
      params.require(:resource).permit(:resource_type, :quantity)
    end
  end
  