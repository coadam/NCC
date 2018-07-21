class QuotationsController < ApplicationController

    def index
      @quotations = Quotation.all
    end

    def new
      @quotation = Quotation.new
    end

    def create
      @quotation = Quotation.new(quotation_params)
      if @quotation.save
        redirect_to quotations_url, notice: 'Quotation succesfully added.'
      else
        render :new
      end
    end

    private

    def quotation_params
      params.require(:quotation).permit(:content)
    end
  end
