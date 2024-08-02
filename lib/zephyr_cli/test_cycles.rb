# frozen_string_literal: true

# Subcommand for creating and updating test cycles as well as uploading results in junit and cucumber format
class TestCycles < Thor
  desc "upload_junit_results", "Upload test results in junit format"
  method_option :project_id, type: :numeric, required: true
  method_option :file, type: :string, required: true
  method_option :auto_close_cycle, type: :boolean, required: false
  method_option :auto_create_test_cases, type: :boolean, required: false
  method_option :name, type: :string, required: true
  method_option :description, type: :string, required: false
  def upload_junit_results(test_cycle_id, junit_xml_file, close_cycle)
    # TODO: Implement logic for parsing junit xml file and uploading test results to Zephyr
  end

  desc "upload_cucumber_results", "Upload test results in cucumber format"
  method_option :project_id, type: :numeric, required: true
  method_option :file, type: :string, required: true
  method_option :auto_close_cycle, type: :boolean, required: false
  method_option :auto_create_test_cases, type: :boolean, required: false
  method_option :name, type: :string, required: true
  method_option :description, type: :string, required: false
  def upload_cucumber_results(test_cycle_id, cucumber_format)
    # TODO: Implement logic for parsing test results and uploading test results to in cucumber format
  end

  desc "create", "Create test cycle"
  method_option :project_id, type: :numeric, required: true
  method_option :name, type: :string, required: true
  method_option :description, type: :string, required: true
  method_option :start_date, type: :string, required: true
  method_option :end_date, type: :string, required: true
  def create(name, description, start_date, end_date, project_id)
    # TODO: Implement logic for creating test cycle
  end

  desc "update", "Update test cycle"
  method_option :project_id, type: :numeric, required: true
  method_option :test_cycle_id, type: :numeric, required: true
  method_option :name, type: :string, required: true
  method_option :description, type: :string, required: true
  method_option :start_date, type: :string, required: true
  method_option :end_date, type: :string, required: true
  def update(test_cycle_id, name, description, start_date, end_date, project_id)
    # TODO: Implement logic for updating test cycle
  end
end

ZephyrCLI.start(ARGV)
