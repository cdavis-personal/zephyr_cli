# frozen_string_literal: true

# Subcommand for creating and updating test cycles as well as uploading results in junit and cucumber format
class TestCycles < Thor
  desc "upload_junit_results", "Upload test results in junit format"
  method_option :project_id, type: :numeric, required: true
  method_option :file, type: :string, required: true
  method_option :name, type: :string, required: true
  method_option :description, type: :string, required: false
  method_option :auto_create_test_cases, type: :boolean, required: false
  def upload_junit_results(project_id, file, auto_close_cycle, name, description, auto_create_test_cases)
    payload = generate_automations_payload(project_id, file, auto_close_cycle, name, description,
                                           auto_create_test_cases)
    @zephyr_client.create_automation_junit(payload)
  end

  desc "upload_cucumber_results", "Upload test results in cucumber format"
  method_option :project_id, type: :numeric, required: true
  method_option :file, type: :string, required: true
  method_option :name, type: :string, required: true
  method_option :description, type: :string, required: false
  method_option :auto_create_test_cases, type: :boolean, required: false
  def upload_cucumber_results(project_id, file, auto_close_cycle, name, description, auto_create_test_cases)
    payload = generate_automations_payload(project_id, file, auto_close_cycle, name, description,
                                           auto_create_test_cases)
    @zephyr_client.create_automation_cucumber(payload)
  end

  desc "create", "Create test cycle"
  method_option :project_id, type: :numeric, required: true
  method_option :name, type: :string, required: true
  method_option :description, type: :string, required: true
  method_option :start_date, type: :string, required: true
  method_option :end_date, type: :string, required: true
  def create(name, description, start_date, end_date, project_id)
    payload = generate_test_cycle_payload(name, description, start_date, end_date, project_id)
    @zephyr_client.create_test_cycle(payload)
  end

  desc "update", "Update test cycle"
  method_option :project_id, type: :numeric, required: true
  method_option :test_cycle_id, type: :numeric, required: true
  method_option :name, type: :string, required: true
  method_option :description, type: :string, required: true
  method_option :start_date, type: :string, required: true
  method_option :end_date, type: :string, required: true
  def update(_test_cycle_id, name, description, start_date, end_date, project_id)
    payload = generate_test_cycle_payload(name, description, start_date, end_date, project_id)
    @zephyr_client.update_test_cycle(payload)
  end
end
