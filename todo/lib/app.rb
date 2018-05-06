class App
  attr_reader :task_name, :priority, :assignee
  
  def initialize(task_name, priority, assignee)
    @task_name = task_name
    @priority = priority 
    @assignee = assignee
  end
 
  def task_priority
    case 
     when task_name.include?('Level 1')
        return priority = 'P1'
      when task_name.include?('Level 2')
        return priority = 'P2'
      when task_name.include?('Level 3')
        return priority = 'P3'
      else
        return '' 
      end 
  end 

  def search(name)
    task_name if (assignee == name && priority == '1')
  end
end
