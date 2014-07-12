class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :title
      t.string :applier
      t.string :file
      t.text :reason

      t.timestamps
    end
  end
end
