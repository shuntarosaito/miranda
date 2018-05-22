class CreateDisplayEvaluations < ActiveRecord::Migration
  def change
    create_table :display_evaluations do |t|
      t.integer :user_id
      t.boolean :display_salary_rate, null: false, default: true
      t.boolean :display_stability_rate, null: false, default: true
      t.boolean :display_benefits_rate, null: false, default: true
      t.boolean :display_future_rate, null: false, default: true
      t.boolean :display_access_rate, null: false, default: true
      t.boolean :display_reputation_rate, null: false, default: true
      t.boolean :display_self_growth_rate, null: false, default: true
      t.boolean :display_human_relationships_rate, null: false, default: true
      t.boolean :display_promotion_rate, null: false, default: true
      t.boolean :display_working_time_rate, null: false, default: true
      t.boolean :display_working_environment_rate, null: false, default: true
      t.boolean :display_rewarding_rate, null: false, default: true
      t.boolean :display_social_contribution_rate, null: false, default: true
      t.timestamp
    end
  end
end
