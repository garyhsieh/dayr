class CreateAdditionalInformations < ActiveRecord::Migration
  def change
    create_table :additional_informations do |t|
      t.string :name
      t.text :content
      t.timestamps
    end
  end
end
