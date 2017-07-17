class ProfilesController < ApplicationController
  before_action :find_profile, only: [:index, :show, :edit, :update, :destroy]

  def index
    @profile = Profile
  end

  def show
    @profile = Profile.find_by(user_id: session[:user_id])
  end

  def edit
    @profile = Profile.find_by(user_id: session[:user_id])
  end

  def update
    @profile = Profile.update(profile_params)
    if @profile.update_attributes(profile_params)
      @profile.save!
      redirect_to user_profile_path
    else
      redirect_to edit_user_profile_path
    end
  end

  private

  def find_profile
    @profile = Profile.find_by(user_id: session[:user_id])
  end

  def profile_params
    params.require(:profile).permit(:id, :birthday, :summary, :user_id)
  end
end
