class ListController < ApplicationController
  before_filter :authenticate_user!  

  def show
    @other_users = User.where('id != ?', current_user.id)
  end
end
