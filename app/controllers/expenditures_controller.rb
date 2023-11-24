class ExpendituresController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @expenditures = @category.expenditures.order(created_at: :desc)
  end

  def new
    @category = Category.find(params[:category_id])
    @expenditure = Expenditure.new
  end

  def create
    @category = Category.find(params[:category_id])
    @expenditure = current_user.expenditures.build(expenditures_params)

    if @expenditure.save
      CategoryExpenditure.create(category: @category, expenditure: @expenditure)
      redirect_to category_expenditures_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def expenditures_params
    params.require(:expenditure).permit(:name, :amount, :icon)
  end
end
