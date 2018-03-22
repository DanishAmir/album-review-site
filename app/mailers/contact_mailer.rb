class ContactMailer < ApplicationMailer
    
    def contact_email(email, name, telephone, message)
        @email = email ##email will be sent in this format from email, name, telephone, message
        @name = name
        @telephone = telephone
        @message = message
        
        mail cc: @email
    end

    
end
