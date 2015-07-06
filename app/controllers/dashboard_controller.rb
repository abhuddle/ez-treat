class DashboardController < ApplicationController
  before_filter :authenticate_user!
  def index
    @towers = Tower.by_company current_user
  end
end