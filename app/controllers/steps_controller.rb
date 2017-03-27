class StepsController < ApplicationController
  def create
    @step = Step.new
  end
end
