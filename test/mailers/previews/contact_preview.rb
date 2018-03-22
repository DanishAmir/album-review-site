# Preview all emails at http://localhost:3000/rails/mailers/contact
class ContactPreview < ActionMailer::Preview
    def contact_email
            ContactMailer.contact_email("danish@me.com", "Danish Amir", "1234567890", @message = "Hello")
    end ##example of contact email

end

