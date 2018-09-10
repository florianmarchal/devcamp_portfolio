class PagesController < ApplicationController
  def home
    @posts = Blog.all
  end

  def about
    @skills = Skill.all
  end

  def contact
  end
end
