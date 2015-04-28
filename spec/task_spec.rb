require('rspec')
require('task')
require('pry')

describe(Task) do
  before() do
    Task.clear()
  end

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

  describe("Task.clear") do
    it ("It will clear the tasks array of all tasks") do
      test_task = Task.new("Wash the dog")
      test_task.save()
      Task.clear()
      expect(Task.display_all()).to(eq([]))
    end
  end

  describe("Task.delete") do
    it("It will delete a task with a specific description") do
      test_task = Task.new("Wash the dog")
      test_task2 = Task.new("Scrub the Zebra")
      test_task.save()
      test_task2.save()
      Task.delete("Wash the dog")
      expect(Task.display_all()).to(eq([test_task2]))
    end
  end
end
