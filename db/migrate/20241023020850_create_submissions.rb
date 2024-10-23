class CreateSubmissions < ActiveRecord::Migration[7.2]
  def change
    create_table :submissions do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
