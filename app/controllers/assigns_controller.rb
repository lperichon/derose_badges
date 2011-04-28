class AssignsController < ApplicationController
  before_filter :require_confirm

  def create
    @user = User.for_facebook_id(params[:fb_user_id])
    badge = Badge.find_by_id(params[:badge_id])
    @user.badges << badge unless badge.blank?
    @user.save

    respond_to do |format|
      format.json { render :json => :ok }
    end
  end
end