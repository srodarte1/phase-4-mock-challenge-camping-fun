class ActivitiesController < ApplicationController
#index, destroy

def index 
    render json: Activity.all, status: :ok
end

def destroy
    a = Activity.find(params[:id])
    a.destroy
    head :no_content
end


end
