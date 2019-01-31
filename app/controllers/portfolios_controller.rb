class PortfoliosController < ApplicationController
  # before_action :get_portfolio_item, only: [:show, :create, :edit, :update, :destroy]
  def index
    @portfolio_items = Portfolio.all
  end

  def show
  end

  def new
    @portfolio_item = Portfolio.new
    render :new
  end

  def create
    @portfolio_item = Portfolio.create(portfolio_params)
    if @portfolio_item.save
      redirect_to portfolios_path
    else
      render :new
    end
  end
  #
  # def edit
  #   render :new
  # end
  #
  # def update
  #   @portfolio_item = Portfolio.create(portfolio_params)
  #   if @portfolio_item.save?
  #     redirect_to portfolio_path(@portfolio_item)
  #   else
  #     render :edit
  #   end
  # end
  #
  # def destroy
  #   redirect_to :portfolios_path
  # end
  #
  private
    def portfolio_params
      params.require(:portfolio).permit(:title, :subtitle, :body)
    end
  #
  #   def get_portfolio_item
  #     @portfolio_item = Portfolio.find(portfolio_params.id)
  #   end

end
