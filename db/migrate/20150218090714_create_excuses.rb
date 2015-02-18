class CreateExcuses < ActiveRecord::Migration
  def change
    create_table :excuses do |t|
      t.string :title
      t.string :content
      t.references :user
    end
  end
end
