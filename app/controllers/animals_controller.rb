class AnimalsController < ApplicationController

    # this line is just for test purposes
    skip_before_action :verify_authenticity_token, only: [:create, :update]

    def create
      @animal = Animal.create!(name: params[:name], herd_id: params[:herd_id], status: 'active')
      redirect_to root_path, notice: "Animal was successfully added."
    end
  
    def update
      @animal = Animal.find(params[:id])
      @animal.update!(status: 'sold')
      redirect_to root_path, notice: "Animal was successfully marked as sold."
    end
  end
  