require_relative 'patient'  

new_patient = Patient.new("Jisie", "David")
puts new_patient.first_name
puts new_patient.last_name

begin

    raise NameError, "No method defined." 

rescue NameError => exception

    puts "Message: #{exception.message}"

else
    
    puts patient_contact_info
    
ensure
    
end
puts new_patient.patient_status(:coma)
begin
    raise ArgumentError if new_patient.patient_currently_admitted?.ArgumentError?
rescue ArgumentError => exception
    puts "Message: #{exception.message}"
else
    puts new_patient.patient_currently_admitted?
    
ensure
    
end
puts new_patient.patient_new_total(125)
new_patient.add_med_to_list("lipitor", 123.12)
new_patient.patient_medications_list