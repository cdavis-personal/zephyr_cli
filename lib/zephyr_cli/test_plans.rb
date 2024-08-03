# frozen_string_literal: true

# Subcommand for creating and updating test plans
class TestPlans < Thor
  desc "create", "Create test plan"
  method_option :name, type: :string, required: true
  method_option :description, type: :string, required: true
  method_option :start_date, type: :string, required: true
  method_option :end_date, type: :string, required: true
  method_option :project_id, type: :numeric, required: true
  def create_test_plan(name, description, start_date, end_date, project_id)
    # TODO: Implement logic for creating test plan
  end

  desc "update", "Update test plan"
  method_option :test_plan_id, type: :numeric, required: true
  method_option :name, type: :string, required: true
  method_option :description, type: :string, required: true
  method_option :start_date, type: :string, required: true
  method_option :end_date, type: :string, required: true
  method_option :project_id, type: :numeric, required: true
  def update_test_plan(test_plan_id, name, description, start_date, end_date, project_id)
    # TODO: Implement logic for updating test plan
  end
end
