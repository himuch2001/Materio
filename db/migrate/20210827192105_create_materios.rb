class CreateMaterios < ActiveRecord::Migration[6.1]
  def change
    create_table :materios do |t|
      t.string :your_name
      t.string :your_email
      t.string :Company
      t.string :apr_budget
      t.text :optional

      t.timestamps
    end
  end
end
