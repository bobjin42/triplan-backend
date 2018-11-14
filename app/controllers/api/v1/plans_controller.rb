class Api::V1::PlansController < ApplicationController
  # skip_before_action :authorized, only: [:index, :create, :batch_upate]

  def index
    @plans = Plan.all
    render json: @plans
  end

  def create
    @plan =  Plan.create(plan_params)
    render json: @plan
  end

  def batch_update
    params[:plan].each { |plan|
        @plan = Plan.find(plan[:plan_id])
        @plan.update(start_time: plan[:start_time])
        @plan.update(end_time: plan[:end_time])
        @plan.update(note: plan[:note])
        @plan.update(location_name: plan[:location_name])
    }
  end

  private
  def plan_params
    params.require(:plan).permit(:trip_id, :location_id, :start_time, :end_time, :note, :name)
  end


end
