class ServiceController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :authed!, only: [:create]

  def index
    @services = Service.order(id: :desc).limit(100)
  end

  def show
    @service = Service.find(params[:id])
    respond_to do |format|
      format.html
      format.json
    end
  end

  def create
    @service = Service.new(permit_params)
    @service.save
    render json: { ok: true }
  end

  private
  def permit_params
  	params.require(:service).permit(:name, :tag)
  end
end
