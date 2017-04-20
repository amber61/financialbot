class StaticPagesController < ApplicationController

  def home
    @free_plan = Plan.find(1)
    @pro_plan = Plan.find(2)
  end

  def help
  end

  def about
  end

  def contact
  end

end
