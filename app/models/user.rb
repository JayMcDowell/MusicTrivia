class User < ActiveRecord::Base
  validates_uniqueness_of :name, message: "must be unique"
  default_scope order("last_worked_at ASC")

  def minutes_to_work
    ENV['FP_ENV'] == 'test' ? 0 : 30
  end
end