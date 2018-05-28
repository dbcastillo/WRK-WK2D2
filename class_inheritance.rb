class Employee
  attr_accessor :salary
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end
  
  def bonus(multiplier)
    @salary * multiplier
  end
end

class Manager < Employee
  attr_accessor :employees
  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employees = []
  end
  
  def bonus(multiplier)
    @salary * multiplier
    salary_arr = @employees.map do |employee| 
      employee.salary
    end 
    salary_arr.reduce(:+) * multiplier
  end
  
    
end

