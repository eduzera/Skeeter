class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:status] = "success"
      #redirect_to @contact
    else
      flash[:status] = "error"
      #render :action => 'new'
    end

    respond_to do |format|
     format.html
     format.js do
       render_to_facebox :partial => "show_message"
     end
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(params[:contact])
      flash[:notice] = "Successfully updated contact."
      redirect_to @contact
    else
      render :action => 'edit'
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    flash[:notice] = "Successfully destroyed contact."
    redirect_to contacts_url
  end
end

