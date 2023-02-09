class SignupsController < ApplicationController

def create 
    render json: Signup.create!(params[:time, :activity_id, :camper_id]), status: :created
end

end
