class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @teachers = Teacher.all
    @teachers_ruby = Teacher.joins(:categories).where(categories: { name: 'Ruby' })
    @teachers_html = Teacher.joins(:categories).where(categories: { name: 'HTML' })
    @teachers_css = Teacher.joins(:categories).where(categories: { name: 'CSS' })
    @categories = Category.all

    if params[:query].present?
      @teachers = Teacher.search_by_all(params[:query])
    end
    if params[:filter].present?
      @teachers = Teacher.search_by_all(params[:filter])
    end
  end
end
