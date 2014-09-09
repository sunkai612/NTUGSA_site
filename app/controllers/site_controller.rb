class SiteController < ApplicationController
  def home
    @rotator = Rotator.all#.order("imageOrder ASC")
    @post_newest = Post.order("id DESC").limit(10)
    @post_mostCommented = Post.where("created_at > ?", Time.now.months_ago(1)).order("comments_count DESC").limit(10)
    @new_event = Event.order("id DESC").limit(3)
    @new_record = Record.order("id DESC").limit(1)
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
    @event_next = if Event.where("id > ?", params[:id].to_i).first
                    Event.where("id > ?", params[:id].to_i).first
                  else
                    @event
                  end
    @event_prev = if Event.where("id < ?", params[:id].to_i).last
                    Event.where("id < ?", params[:id].to_i).last
                  else
                    @event
                  end
  end

  def showRecord
    @record = Record.find(params[:id])
  end

  # private

  # # def next(id)
  # #   events.where("id > ?", id).first
  # # end

  # # def prev(id)
  # #   events.where("id < ?", id).last
  # # end

end
