require('rspec')
require('task')

describe(Task) do
  describe("Task#description") do
    it("Assign a description to a task") do
    test_task = Task.new("Wash the dog")
    expect(test_task.description()).to(eq("Wash the dog"))
    end
  end

end
