class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :conent

      t.timestamps
    end
  end
end
