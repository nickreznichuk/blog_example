class CreateUniqVisitors < ActiveRecord::Migration[5.2]
  def change
    create_table :uniq_visitors do |t|
      t.string :ip
      t.string :browser
      t.string :version

      t.timestamps
    end
  end
end
