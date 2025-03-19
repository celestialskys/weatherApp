class Api::UserLocationsController < ApplicationController
  def unassign_location
    user_location = UserLocation.find(params[:location_id, :user_id])
    if user_location.destroy
      redirect_to :index_path
    else
      render :location_change_error_page
    end
  end

  def assign_location
    user_location = UserLocation.new(params[:location_id, :user_id])
    if user_location.save()
      @location = Location.find(params[:location_id])
    else
      render :location_change_error_page
    end
  end
end
