class EquationsController < ApplicationController
  def index
  	@equations = Equation.all
  end

  def show
  	@equation = Equation.find(params[:id])
  end

  def new
    @equation = Equation.new
  end

  def create
    @equation = Equation.new(equation_params)
    if @equation.save
      redirect_to root_url
    else
      render 'new'
    end
  end
  private
  	def equation_params
		params.require(:equation).permit(:name,:desc,:equation,:answer)
  	end
end
