class HomeController < ApplicationController

  layout "p2p_commingsoon"

  def index
    @contact = Contact.new
  end

  def create
  end

end

