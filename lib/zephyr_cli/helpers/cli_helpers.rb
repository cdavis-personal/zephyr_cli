# frozen_string_literal: true

# CLIHelpers module to share common methods among the CLI classes
module CLIHelpers
  def generate_automations_payload(project_id, file, _auto_close_cycle, name, description,
                                   auto_create_test_cases: false)
    auto_create_test_cases = true if auto_create_test_cases

    {
      projectKey: project_id,
      autoCreateTestCases: auto_create_test_cases,
      file: file,
      testCycle: {
        name: name,
        description: description
      }
    }
  end

  def generate_test_cycle_payload(name, description, start_date, end_date, project_id)
    {
      name: name,
      description: description,
      plannedStartDate: start_date,
      plannedEndDate: end_date,
      projectId: project_id
    }
  end
end
