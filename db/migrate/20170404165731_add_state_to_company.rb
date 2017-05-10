class AddStateToCompany < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :state, :string
    add_column :companies, :neighborhood, :string
  end
end
