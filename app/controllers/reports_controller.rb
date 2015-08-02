class ReportsController < ApplicationController
  def show
    tower = Tower.find(params['id'])
    @data = tower.samples.order( 'samples.sample_date ASC' )
  end

  def data
    tower = Tower.find(params['id'])
    @data = tower.samples.order( 'samples.sample_date ASC' )
    render json: @data
  end
end