require('rspec')
require('task')

describe(Task) do
  describe("Task#description") do
    it("Assign a description to a task") do
    test_task = Task.new("Wash the dog")
    expect(test_task.description()).to(eq("Wash the dog"))
    end
  end

  describe("Task#save") do
    it("saves a task to the task array") do
      test_task = Task.new("Wash the dog")
      test_task.save()
      test_task2 = Task.new("Scrub the zebra")
      test_task2.save()
      expect(Task.display_all()).to(eq([test_task, test_task2]))
    end
  end
end
