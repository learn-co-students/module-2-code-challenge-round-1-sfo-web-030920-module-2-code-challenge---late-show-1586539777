class CreateGuestEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :guest_episodes do |t|
      t.references :guest, foreign_key: true
      t.references :episode, foreign_key: true
      t.string :references

      t.timestamps
    end
  end
end
