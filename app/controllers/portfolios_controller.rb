class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      @portfolio_item.save ?
          format.html {redirect_to portfolios_path, notice: 'Portfolio was created.'} :
          format.html {render :new}
    end
  end

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
