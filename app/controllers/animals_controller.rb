class AnimalsController < ApplicationController
    # this line is just for test purposes
    skip_before_action :verify_authenticity_token, only: [ :create, :update ]

    def create
      @animal = Animal.create!(name: params[:name], herd_id: params[:herd_id], status: "active")
    
      respond_to do |format|
        format.html { redirect_to root_path, notice: "Animal was successfully added. :D" }
        format.turbo_stream
      end
    end
    

    def update
      @animal = Animal.find(params[:id])
      @animal.update!(status: params[:status])
    
      respond_to do |format|
        format.html 
        format.turbo_stream
      end
    end
    
end
