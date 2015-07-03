class SamplesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @samples = Sample.all
  end

  def new
    @sample = Sample.new
  end

  def create
    @sample = Sample.new sample_params
    if @sample.save
      redirect_to samples_path
    else
      render :action => 'new'
    end
  end

  def edit
    @sample = Sample.find params[:id]
  end

  def update
    @sample = Sample.find params[:id]
    if @sample.update_attributes sample_params
      redirect_to samples_path
    else
      render :action => :edit
    end
  end

  def destroy
    @sample = Sample.find params[:id]
    @sample.destroy
    redirect_to samples_path
  end

  def show
    @sample = Sample.find params[:id]
  end

  def towers
    towers = Tower.where(company_id:params['company'])
    render json: towers
  end

  private

  def sample_params
    params.require(:sample).permit(:user, :date, :conductivity, :ph, :magnesium, :calcium, :ca_mg_ratio, :iron, :copper, :phosphorus,
    :zinc, :sodium, :molybdate, :silicate, :boron, :aluminum, :sulfer, :manganese, :total_hardness, :ortho_po4, :azole, :polymer)
  end
end