class Department
  def self.department_with_most_employees
    joins(:employees).group("departments.id").order("count(*) DESC").first
  end
end

class Employee
  def self.lucky_employees
    salaries = all.map {|e| e.salary}
    avg = salaries.sum / salaries.size.to_f
    # all.select {|e| e.salary > avg}
    where("salary > #{avg}")
  end

  def self.rich_employees
    where("salary > ?", sum(:salary)/count)
  end
end
