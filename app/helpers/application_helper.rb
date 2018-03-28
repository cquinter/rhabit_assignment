module ApplicationHelper

  def display_employees_for(employee_passed_in, results="")
    results << "<ul>"
    employee_passed_in.employees.each do |employee|
      results << "<li>#{link_to employee.full_name, user_url(employee.id)}, #{employee.title}</li>"
      if employee.employees.present?
        results << display_employees_for(employee)
      end
    end
    results << "</ul>"
    results.html_safe
  end

end
