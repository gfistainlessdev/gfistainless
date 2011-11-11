class PagesController < ApplicationController
  def show
    @page=Page.where('lower(slug)=?',params[:id].downcase).first
  end

  def mercury_update
    page=Page.find(params[:id])
    page.name=params[:content][:page_name][:value]
    page.content=params[:content][:page_content][:value]
    page.save!
    render text: ""
  end
end
