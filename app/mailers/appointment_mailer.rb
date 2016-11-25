class AppointmentMailer < ApplicationMailer

    def confirm_appointment(user, createdtime, stats)
      @user = user
      @time = createdtime
      @status = stats
      @appointment = Appointment.all
     
      
          
           mail to: user.email, subject: "Confirm Appointment "
          
    end  
    
    def confirm_appointment_for_doctor(user, createdtime, stats)
      @user = user
      @time = createdtime
      @status = stats
      @appointment = Appointment.all
      
      mail to: user.email, subject: "You have a patient with Confirm Appointment for your Appointment"
    
    end
  

    def cancel_appointment()
      @user = user
      mail to: user.email, subject: "Cancel Appointment"
    end
    
end
