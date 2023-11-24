class ExpendituresController < ApplicationController
    before_action :authenticate_user!
    before_action :set_category
  
    def index
      @expenditures = @category.expenditures.order(created_at: :desc)
    end
  
    def new
      @expenditure = @category.expenditures.new
    end
  
    def create
      @expenditure = @category.expenditures.new(expenditure_params)
  
      if @expenditure.save
        redirect_to category_expenditures_path(@category), notice: "expenditure created successfully."
      else
        render :new
      end
    end
  
    private
  
    def set_category
      @category = category.find(params[:category_id])
    end
  
    def expenditure_params
      params.require(:expenditure).permit(:amount)
    end
  end
  