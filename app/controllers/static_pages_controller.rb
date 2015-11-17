class StaticPagesController < ApplicationController
  def home
  	if current_user.admin == true
  		redirect_to rails_admin_path
  	end
  end
end
