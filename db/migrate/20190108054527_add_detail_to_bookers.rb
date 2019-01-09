class AddDetailToBookers < ActiveRecord::Migration[5.2]
  def change
    add_column :bookers, :title, :string
    add_column :bookers, :category, :string
    add_column :bookers, :body, :string
  end
end
