class Faculty < ApplicationRecord
  def self.filter(params, departments)
    departments_uniq = departments.map{|department| [department.univ_name, department.faculty_name]}.uniq
    
    engineering = (params["engineering"] == "0") ? [] : ["engineering"]
    science_and_engineering = (params["science_and_engineering"] == "0") ? [] : ["science_and_engineering"]
    science = (params["science"] == "0") ? [] : ["science"]
    economics = (params["economics"] == "0") ? [] : ["economics"]
    law = (params["law"] == "0") ? [] : ["law"] 
    literature = (params["literature"] == "0") ? []: ["literature"]
    others = (params["other_faculty_type"] == "0") ? []: ["others"]

    faculties = Faculty.where(
      faculty_type: [engineering, science_and_engineering, science, economics, law, literature, others].reduce([], :concat)
    )

    faculties.select {|faculty| departments_uniq.select {|univ_name, faculty_name| faculty.s_name == univ_name && faculty.f_name == faculty_name}.length > 0}
  end
end
