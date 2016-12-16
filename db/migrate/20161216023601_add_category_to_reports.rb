class AddCategoryToReports < ActiveRecord::Migration[5.0]
  def change
    category = Category.create! nombre: "Municipio"
    add_reference :reports, :category, foreign_key: true, default: category.id
  end
end
