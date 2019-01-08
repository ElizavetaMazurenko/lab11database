class CreatePalindroms < ActiveRecord::Migration[5.2]
  def change
    create_table :palindroms do |t|
      t.integer :num
      t.text :palind
      t.text :sq

      t.timestamps
    end
  end
end
