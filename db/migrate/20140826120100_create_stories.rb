class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|

      t.string :name
      t.text	:desc	

      t.timestamps
    end
  end
end
