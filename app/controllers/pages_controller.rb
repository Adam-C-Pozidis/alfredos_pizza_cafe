class PagesController < ApplicationController

  def menu
    @menuitems = MenuItem.all
  end

end
