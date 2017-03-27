class CreateClips < ActiveRecord::Migration[5.0]
  def change
    create_table :clips do |t|
      t.text :text
      t.string :page_title
      t.string :page_url

      t.timestamps
    end
  end
end
