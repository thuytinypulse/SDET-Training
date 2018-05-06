require 'app'

describe App do

  describe "Priority of Tasks" do
    it "task with priority 1" do
      app1 = App.new('Level 1 - Task A', '1','QA 1') 
      expect(app1.task_priority).to eq 'P1'
    end

    it "task with priority 2" do
      app2 = App.new('Level 2 - Task B', '2','QA 2') 
      expect(app2.task_priority).to eq 'P2'
    end 

    it "task with priority 3" do
      app3 = App.new('Level 3 - Task C', '3','') 
      expect(app3.task_priority).to eq 'P3'
    end

    it "task with no priority" do
      app4 = App.new('Task D', '','') 
      expect(app4.task_priority).to eq ''
    end
  end 

  describe "Search a task P1 assigned to user" do
    it "search task assigned to user QA 1" do
      app = App.new('Task A', '1', 'QA 1')
      expect(app.search('QA 1')).to eq 'Task A'
    end 
  end
end