class User < ApplicationRecord

  has_many :employees, class_name: "User", foreign_key: "manager_id"

  belongs_to :manager, class_name: "User", required: false

  def full_name
    "#{first_name} #{last_name}"
  end

  def as_json options={}
    {
      id: id,
      full_name: full_name,
      title: title,
      employees: employees
    }
  end

end
