class HomeController < ApplicationController
  def index
    @hello_world = "Hello World"

    respond_to do |format|
      format.html
      format.pdf { render :pdf => 'contents' }
    end
  end
end
