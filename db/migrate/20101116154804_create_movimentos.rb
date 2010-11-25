class CreateMovimentos < ActiveRecord::Migration
  def self.up
    create_table :movimentos do |t|
      t.references :tipo
      t.float :valor
      t.text :obs
      t.date :data

      t.timestamps
    end
  end

  def self.down
    drop_table :movimentos
  end
end
