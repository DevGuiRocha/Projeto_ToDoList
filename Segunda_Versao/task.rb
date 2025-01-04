class Task
  attr_acessor :title, :description, :completed

  def initialize
    @title = title
    @description = description
    @completed = false
  end

  def task_completa
    @completed = true
  end

  def to_s
    status = completed ? '[X]' : '[ ]'
    "#{status}"
  end
end