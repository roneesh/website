class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :author
      t.text :script
      t.string :url

      t.timestamps
    end
  end
end
