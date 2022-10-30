class CreateItaewonRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :itaewon_records do |t|
      t.float :lat
      t.float :lng
      t.string :name
      t.string :url
      t.timestamp :when

      t.timestamps
    end
  end
end
