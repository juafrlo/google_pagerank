class PageranksController < ApplicationController
  def index
    if params[:domain_name].present?
      @rank = PageRankr.ranks(params[:domain_name], :google)[:google] rescue "-1"
    end
  end
end