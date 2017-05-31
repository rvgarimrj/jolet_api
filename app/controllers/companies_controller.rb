class CompaniesController < ApplicationController
  before_action :authenticate_api_v1_user!, :set_company, only: [:show, :update, :destroy]

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  # POST /companies
  # POST /companies.json
  def create
    @company = Company.new(company_params)
    binding.pry
    if @company.save!
      render :show, status: :created
    else
      binding.pry
      render json: {
        status: 500,
        errors: @company.erros
      }.to_json
    end
  end

  # PATCH/PUT /companies/1
  # PATCH/PUT /companies/1.json
  def update
    if @company.update(company_params)
      render :show, status: :ok
      
    else
      render json: {
        status: 500,
        errors: @company.erros
      }.to_json
      
    end
    
  end

  # DELETE /companies/1
  # DELETE /companies/1.json
  def destroy
    @company.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params.require(:company).permit(:company_name, :short_name, :kind, :cpf_cnpj, :street, :number, :city, :zipcode, :state, :neighborhood, :phone, :user_id,:company_email)
    end
end
