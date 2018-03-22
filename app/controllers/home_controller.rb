class HomeController < ApplicationController
  def home
  end
  
  def contact
  end
  
  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]

    if email.blank?
      flash[:alert] = I18n.t('home.request_contact.no_email') ##must fill out before leaving
    else
      ContactMailer.contact_email(email, name, telephone, message).deliver_now ##delivers email 
      flash[:notice] = I18n.t('home.request_contact.email_sent')
    end

    redirect_to root_path ## back to home
  end
  
end
