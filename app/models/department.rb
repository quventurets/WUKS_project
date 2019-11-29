class Department < ApplicationRecord
  def self.filter(params)
    if(params["subject"] == "exact")
      # math = (params["math_e"] == "1") ? [1] : [0]
      # english = (params["english_e"] == "1") ? [1] : [0]
      # physics = (params["physics_e"] == "1") ? [1] : [0]
      # chemistry = (params["chemistry_e"] == "1") ? [1] : [0]
      # biology = (params["biology_e"] == "1") ? [1]: [0]

      math = (params["math_e"] == "0") ? [0] : [0,1]
      english = (params["english_e"] == "0") ? [0] : [0,1]
      physics = (params["physics_e"] == "0") ? [0] : [0,1]
      chemistry = (params["chemistry_e"] == "0") ? [0] : [0,1]
      biology = (params["biology_e"] == "0") ? [0]: [0,1]
      interview = (params["interview"] == "0") ? [0]: [0,1]
      other = (params["other"] == "0") ? [0]: [0,1]

      Department.where(
        math: math,
        english: english,
        physics: physics,
        chemistry: chemistry,
        biology: biology,
        special: other,
        paper: other,
        integration: other,
        practical: other,
        external_english: other,
        interview: interview
      )
    elsif (params["subject"] == "partial")
      math = (params["math_e"] == "1") ? [1] : [0,1]
      english = (params["english_e"] == "1") ? [1] : [0,1]
      physics = (params["physics_e"] == "1") ? [1] : [0,1]
      chemistry = (params["chemistry_e"] == "1") ? [1] : [0,1]
      biology = (params["biology_e"] == "1") ? [1]: [0,1]
      interview = (params["interview"] == "1") ? [1]: [0,1]

      Department.where(
        math: math,
        english: english,
        physics: physics,
        chemistry: chemistry,
        biology: biology,
        interview: interview
      )
    else
      Department.all
    end
  end
end
