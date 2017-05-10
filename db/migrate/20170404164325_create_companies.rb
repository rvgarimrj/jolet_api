class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :short_name
      t.integer :kind
      t.string :cpf_cnpj
      t.string :street
      t.string :number
      t.string :city
      t.string :zipcode
      

      t.timestamps
    end
  end
end
