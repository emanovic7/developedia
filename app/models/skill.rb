class Skill < ApplicationRecord
  has_many :skillsets
  has_many :developers, through: :skillsets

  @languages = [
    "python",
    "java",
    "ruby",
    "ruby on rails",
    "objective-c",
    "c++",
    "javacript",
    "c#",
    "C language",
    "PHP",
    "SQL",
    "swift"
  ]
end
