class MedTypeError < StandardError
    
end


class Patient
    attr_accessor :first_name, :last_name, :status, :current_balance, :med_list

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @med_list = []
  end

  def patient_status(status)

    begin

        raise ArgumentError, "Argument is not a string" unless status.is_a? String

        
    rescue ArgumentError => error
        puts "#{status}: #{error.message}"
    else
        @status = status
        
    ensure
        
    end




  end

  def patient_currently_admitted?(admit_time)


    begin
        raise ArgumentError, "Incorrect number of arguments" unless admit_time.length == 1
    rescue => exception
        
    else
        puts "Patient currently in hospital, admitted at #{admit_time}"
        
    ensure
        
    end
  
    
  end



  def patient_new_total(amount)

    @current_balance = 0
    puts "Current balance before calculation: #{current_balance}"

    begin
        raise ZeroDivisionError, "Cannot divide by 0." unless @current_balance != 0
    rescue ZeroDivisionError => exception
        puts "#{status}: #{exception.message}"
    else
        @current_balance = (current_balance + amount)/current_balance
        
        # This runs only if there are no exceptions
        @current_balance = amount
    ensure
        
    end


  end

  def add_med_to_list(med, dosage)
    begin

        raise ArgumentError,"#{med} is not a string" unless med.is_a? String
    
        raise ArgumentError,"#{dosage} is not a integer" unless dosage.is_a? Integer
        
        #Create a new class called MedTypeError that inherits from StandardError and use that as seen below:
        raise MedTypeError, "This is not a valid medication" 
        
    rescue ArgumentError => exception
        puts "Message: #{exception.message}"
        
    rescue MedTypeError => exception
        puts "Message: #{exception.message}"
    else
        
        @med_list.push([med,dosage])
        puts @med_list
        puts "Medication added: #{med}"
        
    ensure
        
    end
  end

  def patient_medications_list

    begin
        puts "User medication list:"
        
        raise RuntimeError, "Medications list is not valid."
    rescue RuntimeError => exception
        puts "Message: #{exception.message}"
    else
        puts @med_list
        
    ensure
        # This needs to run whether there was an exception or not.
        puts "Disclaimer: The hospital is not responsible for the user's health due to medications they may be using."
        
    end


  end
end