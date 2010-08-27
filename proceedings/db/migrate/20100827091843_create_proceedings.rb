class CreateProceedings < ActiveRecord::Migration
  def self.up
    create_table :proceedings do |t|
      t.string :title
      t.string :authors
      t.string :year
      t.string :type
      t.string :journal_name
      t.string :journal_short_name
      t.string :issue
      t.string :volume
      t.string :used_pages
      t.string :keywords

      t.timestamps
    end
  end

  def self.down
    drop_table :proceedings
  end
end
