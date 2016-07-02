require 'rails_helper'

describe UsersController, :type => :controler do

	before do
		@user = FactoryGirl.create(:user)
	end

	describe "GET #show" do
		context "User is logged in"
			before do
				sign_in @user
			end

			it "loads correct user details" do
				get :show, id: @user.id
				expect(response).to have_http_status(200)
				expect(assigns(:user)).to eq @user
			end
		end

		context "No user is logged in" do
			it "redirects to login" do
				get :show, id: @user.id
				expect(response).to redirect_to(root_path)
			end
		end

		context "User is logged in" do
			before do
				sign_in @user_two
			end

			context "Wrong user" do
				it "redirects to login" do
					get :show, id: @user.id
					expect(assigns(:user)).not_to eq @user_two
					expect(response).to redirect_to(root_path)
				end
	    end
	  end
	end
