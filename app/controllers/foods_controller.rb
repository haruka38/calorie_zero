# app/controllers/foods_controller.rb
class FoodsController < ApplicationController
  EXERCISES = {
    "ジョギング" => 8.0,   # 1分あたり消費カロリー
    "ウォーキング" => 4.0,
    "縄跳び" => 10.0
  }

  def index
    @foods = Food.all
    if params[:food_id].present?
      @selected_food = Food.find(params[:food_id])
      @exercises = EXERCISES.map do |name, cal_per_min|
        { name:, minutes: (@selected_food.calories / cal_per_min).round }
      end
      @excuse = @selected_food.excuses.sample
    end
  end

  def excuse
    food = Food.find(params[:id])
    @excuse = food.excuses.sample

    respond_to do |format|
      format.turbo_stream
    end
  end
end
