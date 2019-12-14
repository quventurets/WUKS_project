class Department < ApplicationRecord
  def self.filter(params)
    math = (params["math"] == "0") ? [0] : [0,1]
    english = (params["english"] == "0") ? [0] : [0,1]
    physics = (params["physics"] == "0") ? [0] : [0,1]
    chemistry = (params["chemistry"] == "0") ? [0] : [0,1]
    special = (params["special"] == "0") ? [0] : [0,1]
    external_english = (params["external_english"] == "0") ? [0]: [0,1]
    interview = (params["interview"] == "0") ? [0]: [0,1]
    other = (params["other"] == "0") ? [0]: [0,1]

    Department.where(
      math: math,
      english: english,
      physics: physics,
      chemistry: chemistry,
      biology: other,
      special: special,
      paper: other,
      integration: other,
      practical: other,
      external_english: external_english
    )
  end
end
