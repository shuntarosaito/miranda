class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.integer :user_id
      t.integer :company_id
      t.integer :salary_rate, null: false, default: "0"
      t.integer :stability_rate, null: false, default: "0"
      t.integer :benefits_rate, null: false, default: "0"
      t.integer :future_rate, null: false, default: "0"
      t.integer :access_rate, null: false, default: "0"
      t.integer :reputation_rate, null: false, default: "0"
      t.integer :self_growth_rate, null: false, default: "0"
      t.integer :human_relationships_rate, null: false, default: "0"
      t.integer :promotion_rate, null: false, default: "0"
      t.integer :working_time_rate, null: false, default: "0"
      t.integer :working_environment_rate, null: false, default: "0"
      t.integer :rewarding_rate, null: false, default: "0"
      t.integer :social_contribution_rate, null: false, default: "0"
      t.timestamps
    end
  end
end
