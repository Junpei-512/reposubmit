class CreateSubmits < ActiveRecord::Migration[5.2]
  def change
    create_table :submits do |t|
      t.text :content

      t.timestamps
    end
  end
end
