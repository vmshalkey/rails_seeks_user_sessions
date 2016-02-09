class SessionsController < ApplicationController

	# GET /sessions/new
	  # def new
	  #   @session = Sessions.new
	  # end

  # POST /users
  # POST /users.json
  def create
    logged_in_user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
    	if logged_in_user != false

            #right way of adding values to session
    		session[:user] = {email: logged_in_user[:email], name: logged_in_user[:name], id: logged_in_user[:id], status: true }

            #right way of using the redirect function
    		redirect_to '/users/'+logged_in_user[:id].to_s

    	else

    	end
    # render :json => logged_in_user

    # respond_to do |format|
    #   if @session.save
    #     format.html { redirect_to @session, notice: 'User was successfully created.' }
    #     format.json { render :show, status: :created, location: @session }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @session.errors, status: :unprocessable_entity }
    #   end
    # end
  end
end
