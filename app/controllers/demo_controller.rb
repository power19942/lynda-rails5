class DemoController < ApplicationController

  layout false
  def index

  end

  def about
    puts params[:id]
  end

  def hello

  end


end
