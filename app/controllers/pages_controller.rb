class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    
  end


  def index
    @teachers = Teacher.all
  end

end
