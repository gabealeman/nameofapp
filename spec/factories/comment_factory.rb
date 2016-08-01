FactoryGirl.define do
	sequence(:rating) { |n| "#{n}/5"}
	sequence(:body) { |n| "bike test review #{n}"}
	

	factory :comment do
		association :product
		user @user
		rating
		body 
	end

	
end