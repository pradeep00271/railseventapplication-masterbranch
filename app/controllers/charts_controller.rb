class ChartsController < ApplicationController
  def chart_data
    render json: Event.group_by_day(:start_date).count
  end
end
