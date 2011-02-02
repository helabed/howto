class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :name
      t.boolean :injured
      t.decimal :salary
      t.date :date_of_birth
      t.references :team

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
