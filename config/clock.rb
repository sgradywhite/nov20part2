require 'clockwork'
require './config/boot'
require './config/environment'

module Clockwork

  handler do |job|
    puts "Running #{job}"
  end

every(30.seconds, 'Creating Cycle') {


      Appointment.all.each do |appointment|

        

              AppointmentMailer.confirm_appointment(User.where(:email => "sgradywhite@yahoo.com"), appointment.created_at, appointment.status).deliver_now


        

      end




}


end
