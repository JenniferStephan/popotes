class PagesController < ApplicationController
  skip_before_action :authenticate_user!, except: :new

  def home
  end
end
