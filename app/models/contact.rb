class Contact < ActiveRecord::Base
  has_many :numbers, dependent: :destroy

  validates :email, uniqueness: true

  scope :search, lambda { |term|
    if term
      term = "%#{term.to_s}%"
    else
      term = ""
    end
    sql = "firstname LIKE :term OR lastname LIKE :term OR email LIKE :term"

    where(sql, { term: term }).includes(:numbers).as_json(include: :numbers)
  }

  def to_s
    "#{self.id}: #{self.firstname} #{self.lastname} (#{self.email})"
  end

  def self.email_duplicate?(email)
    Contact.find_by_email(email) ? true : false
  end

end