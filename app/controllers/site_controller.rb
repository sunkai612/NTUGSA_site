class SiteController < ApplicationController
  def home
    @rotator = Rotator.all
    @post_newest = Post.order("id DESC").limit(10)
    @post_mostCommented = Post.where("created_at > ?", Time.now.months_ago(1)).order("comments_count DESC").limit(10)
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
