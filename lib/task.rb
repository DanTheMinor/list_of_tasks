class Task
  @@all_tasks = []
  define_method(:initialize) do |description|
    @description = description
  end

  define_method(:description) do
    @description
  end

  define_method(:save) do
    @@all_tasks.push(self)
  end

  define_singleton_method(:display_all) do
    @@all_tasks
  end

  define_singleton_method(:clear) do
    @@all_tasks = []
  end

  define_singleton_method(:delete) do |description|
    @@all_tasks.each() do |task|
      if task.description().==(description)
        @@all_tasks.delete(task)
        break
      end
    end
  end
end
