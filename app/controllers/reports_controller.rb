class ReportsController < ApplicationController
  def show
    tower = Tower.find(params['id'])
    @data = tower.samples
  end
end