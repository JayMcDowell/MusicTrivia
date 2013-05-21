class MQController
  # include Formatter

  def initialize params
    @params = params
  end

  def index
    users = User.all
    users.each_with_index do |user, i|
      puts "#{i+1}. #{user.name}"
    end
  end

  def create
    user = User.new(params[:user])
    if user.save
      puts "Success!"
    else
      puts "Failure :( #{user.errors.full_messages.join(", ")}"
    end
  end

  def destroy
    matching_users = User.where(name: params[:user][:initials]).all
    matching_users.each do |user|
      user.destroy
    end
  end

  def work
    user = User.first
    if user
      user.update_attribute(:last_worked_at, Time.now)
      add_line colorize("#{user.name}", GREEN)
      Countdown.for(user.minutes_to_work)
    else
      puts "You must enter a project before you can start working"
    end
  end

  private

  def params
    @params
  end
end