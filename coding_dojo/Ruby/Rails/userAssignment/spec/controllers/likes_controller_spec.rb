require 'rails_helper'

RSpec.describe LikesController, type: :controller do
	before do
		@user = create_user
	end
	describe 'when not logged in' do
		before do
			session[:user_id] = nil
		end
		it "cannot like a comment" do
			get :like
			expect(response).to redirect_to '/sessions/new'
		end
		it "cannot unlike a comment" do
			get :unlike
			expect(response).to redirect_to '/sessions/new'
		end
	end
end
