class ReportsController < ApplicationController
  def show
    tower = Tower.find(params['id'])
    @data = tower.samples.order( 'samples.sample_date ASC' )
  end
end