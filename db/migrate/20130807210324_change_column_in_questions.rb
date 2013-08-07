class ChangeColumnInQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :conent
    add_column :questions, :content, :text
  end
end
