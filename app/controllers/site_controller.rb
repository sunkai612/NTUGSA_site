class SiteController < ApplicationController
  def home
    @rotator = Rotator.all#.order("imageOrder ASC")
    @post_newest = Post.order("id DESC").limit(10)
    @post_mostCommented = Post.where("created_at > ?", Time.now.months_ago(1)).order("comments_count DESC").limit(10)
    @new_event = Event.order("event_date DESC").limit(3)
    @new_record = Record.order("date DESC").limit(1)
  end

  def about 
    @intro = Intro.all
    @organization = Organization.all.order("id ASC")
    #@member = @organization.members
    @statute = Statute.all
  end

  def event
    @event = Event.all.order("event_date DESC")
  end

  def record
    @record = Record.joins(:organization).all.order("date DESC")
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
    @record_next = if Record.where("id > ?", params[:id].to_i).first
                    Record.where("id > ?", params[:id].to_i).first
                  else
                    @record
                  end
    @record_prev = if Record.where("id < ?", params[:id].to_i).last
                    Record.where("id < ?", params[:id].to_i).last
                  else
                    @record
                  end
  end

  # private

  # # def next(id)
  # #   events.where("id > ?", id).first
  # # end

  # # def prev(id)
  # #   events.where("id < ?", id).last
  # # end

end
