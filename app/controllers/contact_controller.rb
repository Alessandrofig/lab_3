class ContactController < ApplicationController
    def new
    end
  
    def create
      flash[:notice] = "Thank you for your message, we will contact you soon."
      redirect_to root_path
    end
  end
  