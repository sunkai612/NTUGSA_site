class Admin::IntrosController < ApplicationController
  before_action :authenticate_administrator!
  def index
    @intro = Intro.all
  end
end
