class PagesController < ApplicationController
  def show
    @page=Page.where('lower(slug)=?',params[:id].downcase).first
  end

end
