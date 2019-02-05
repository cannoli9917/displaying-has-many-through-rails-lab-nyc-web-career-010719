class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

# "January 12, 2016 at 3:00"
  def format_date
    self.appointment_datetime.strftime("%B %-d, %Y at %H:%M")
  end
end
