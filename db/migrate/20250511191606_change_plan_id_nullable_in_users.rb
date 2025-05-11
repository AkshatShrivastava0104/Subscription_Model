class ChangePlanIdNullableInUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :plan_id, true
  end
end
