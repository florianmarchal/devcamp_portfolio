class TopicsController < ApplicationController
  layout 'blog'
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    @blogs = logged_in?(:site_admin) ? @topic.blogs.recent.page(params[:page]).per(5) : @topic.blogs.published.recent.page(params[:page]).per(5)
  end
end
