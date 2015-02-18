class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :excuse
      t.references :user
    end
  end
end
