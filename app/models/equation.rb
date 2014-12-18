class Equation < ActiveRecord::Base
	def equation_params
		params.require(:name).permit(:name,:desc,:equation,:answer)
	end
end
