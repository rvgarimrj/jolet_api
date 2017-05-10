json.extract! company, :id, :company_name, :short_name, :kind, :cpf_cnpj, :street, :number, :city, :zipcode, :user_id,:company_email :created_at, :updated_at
json.url company_url(company, format: :json)
