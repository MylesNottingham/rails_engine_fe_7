class ItemsController < ApplicationController
  def index
    @facade = ItemFacade.new
  end

  def show
    @facade = ItemFacade.new
  end
end
