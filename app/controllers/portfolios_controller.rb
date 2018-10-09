class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html do
          redirect_to portfolios_path, notice: 'Portfolio was created.'
        end
      else
        format.html { render :new }
      end
    end
  end

  def edit; end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html do
          redirect_to portfolios_path, notice: 'Portfolio was updated.'
        end
      else
        format.html { render :edit }
      end
    end
  end

  def show; end

  def destroy
    @portfolio_item.destroy

    respond_to do |format|
      format.html do
        redirect_to portfolios_path, notice: 'Portfolio was deleted.'
      end
    end
  end

  def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
