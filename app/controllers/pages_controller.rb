class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:about, :contact]

  def home
  end

  def about
  end

  def contact
  end
end
