class CreateTemporaryImages < ActiveRecord::Migration[5.2]
  def change
    create_table :temporary_images do |t|

      t.timestamps
    end
  end
end
