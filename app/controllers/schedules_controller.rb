class SchedulesController < ApplicationController
  before_action :set_user, only: %i(new)
  before_action :set_one_month, only: %i(new)

  def new
  end

 
end
