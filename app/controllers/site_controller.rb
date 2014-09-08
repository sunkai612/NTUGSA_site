class SiteController < ApplicationController
  def home
    @rotator = Rotator.all#.order("imageOrder ASC")
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
    @event_before = Event.find(before_one(params[:id]))
    @event_after = Event.find(after_one(params[:id]))
  end

  def showRecord
    @record = Record.find(params[:id])
  end

  private

  def before_one(@current_id)
    @id_checking = @current_id
    until @id_checking - 1
      @id_checking -= 1
    end
    return @id_checking
  end

  def after_one(@current_id)
    @id_checking = @current_id
    until @id_checking + 1
      @id_checking += 1
    end
    return @id_checking
  end

end
