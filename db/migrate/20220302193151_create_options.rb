class CreateOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :options do |t|
      t.string :question_id
      t.string :option

      t.timestamps
    end
  end
end
