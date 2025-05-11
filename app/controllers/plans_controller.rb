class PlansController < ApplicationController
  before_action :authentication_user!,
  def index
    @plans = Plan.all
  end

  def select

    @plan = Plan.find(params[:id])
    current_user_update(plan: plan)
    redirect_to root_path, notice: "You have selected the #{plan.name} plan"
  end
end
