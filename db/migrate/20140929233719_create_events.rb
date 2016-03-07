class CreateEvents < ActiveRecord::Migration
  def up
    create_table :events do |t|
      t.string :type, null: false
      t.datetime :starts_at, null: false
      t.timestamps
    end
    Event.create_translation_table! :title => :string, :introduction => :text, :conclusion => :text
  end

  def down
    drop_table :events do
    end
    Event.drop_translation_table!
  end
end
