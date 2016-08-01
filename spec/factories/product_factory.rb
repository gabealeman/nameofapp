FactoryGirl.define do
	sequence(:name) { |n| "bike test#{n}"}

	factory :product do
		name
		price 100
	end
	
end