class User < ActiveRecord::Base

  def self.add_initials(entered_initials)
    User.create( initials: entered_initials )
    if User.where( entered_initials:).exists?
        puts "Welcome back!  Choose a new quiz.  You have the choice of 60's or 90's"
    else puts "Please choose a quiz.  60s or 90s?"
    end
  end
end

