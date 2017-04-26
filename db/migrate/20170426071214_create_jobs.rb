class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :job_title
      t.string :company_name
      t.string :description
      t.string :requirement
      t.string :email

      t.timestamps
    end
  end
end
