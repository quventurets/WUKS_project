class Faculty < ApplicationRecord
  def self.filter(params, departments)
    departments_uniq = departments.map{|department| [department.univ_name, department.faculty_name]}.uniq
    
    faculties = Faculty.all

    faculties.select {|faculty| departments_uniq.select {|univ_name, faculty_name| faculty.s_name == univ_name && faculty.f_name == faculty_name}.length > 0}
  end
end
