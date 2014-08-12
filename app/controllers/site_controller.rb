class SiteController < ApplicationController
  def home
    @rotator = Rotator.all
  end

  def about 
    @intro = Intro.all
    @organization = Organization.all
    #@member = @organization.members
    @statute = Statute.all
  end

  def event
    @event = Event.all
  end

  def record
    @record = Record.all
  end

  def showEvent
    @event = Event.find(params[:id])
  end

  def showRecord
    @record = Record.find(params[:id])
  end  
end
