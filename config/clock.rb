require 'clockwork'
require './config/boot'
require './config/environment'

module Clockwork

  handler do |job|
    puts "Running #{job}"
  end

every(30.seconds, 'Creating Cycle') {


      Appointment.all.each do |appointment|

        for i in  0..100 do

              AppointmentMailer.confirm_appointment(User.where(:email => "sgradywhite@yahoo.com"), appointment.find(i).created_at, appointment.find(i).status).deliver_now


        end

      end




}


end
