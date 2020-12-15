class CreateTypeDocuments < ActiveRecord::Migration[6.0]
  def change
    create_table :type_documents do |t|
      t.string :name
      t.string :abbreviation

      t.timestamps
    end
  end
end
