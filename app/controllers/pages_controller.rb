class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @teachers_ruby = Teacher.joins(:categories).where(categories: { name: 'Ruby' })
    @teachers_html = Teacher.joins(:categories).where(categories: { name: 'HTML' })
    @teachers_css = Teacher.joins(:categories).where(categories: { name: 'CSS' })

    if params[:query].present?
      @teachers = Teacher.search_by_all(params[:query])
    end
  end
end
