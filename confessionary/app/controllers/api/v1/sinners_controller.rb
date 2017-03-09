class Api::V1::SinnersController < Api::V1::BaseController
  def index
  respond_with Sinner.all
  end

  def create
    respond_with :api, :v1, Sinner.create(sinner_params)
  end

def destroy
  respond_with Sinner.destroy(params[:id])
end

def update
  sinner = Sinner.find(params["id"])
  sinner.update_attributes(sinner_params)
  respond_with sinner, json: sinner
end

private

def sinner_params
  params.require(:sinner).permit(:id, :name, :sin)
end

end
