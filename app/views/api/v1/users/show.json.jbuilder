json.extract! @user, :id, :name, :nickname, :email, :photo, :kind_of_user, :created_at, :updated_at

json.company do
  json.extract! @user.company, :company_name, :short_name, :kind, :cpf_cnpj, :street, :number, :city, :zipcode, :state, :neighborhood, :phone,:company_email if @user.company
end
