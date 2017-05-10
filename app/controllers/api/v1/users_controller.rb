class Api::V1::UsersController < ApplicationController
  before_action :authenticate_api_v1_user!
  # before_action :set_user, only: [:update]

  def update
    @user = current_api_v1_user
    begin
      if params[:company]
        if @user.company.present?
          @user.company.update(company_params)
        else
          @user.update(company: Company.create(company_params))
        end
      end
      @user.update(user_params)
      render template: '/api/v1/users/show', status: 200
    rescue Exception => errors
      render json: errors, status: :unprocessable_entity
    end
  end

  def current_user
    @user = current_api_v1_user
    render template: '/api/v1/users/show', status: 200
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :nickname, :photo, :email, :company_id, :kind_of_user)
    end

    def company_params
      params.require(:company).permit(:company_name, :short_name, :kind, :cpf_cnpj, :street, :number, :city, :zipcode, :state, :neighborhood, :phone,:company_email)
    end
end
