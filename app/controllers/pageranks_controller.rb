class PageranksController < ApplicationController
  def index

    if params[:url].present?
      @rank = PageRankr.ranks(params[:url], :google)[:google] rescue "-1"
    end
  end
end