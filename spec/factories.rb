FactoryGirl.define do

	factory :addition do
		booking_id 1
		extra_id 1
	end

	# :name, :description, :size, :capacity, :price, :picture, :rmcat_id
	factory :room do
		name "The New Room"
		description  "The Really Good New Room"
		size "250"
		capacity "650"
		price "2500"
		picture_file_name 'room-controller-valid.jpg'
		picture_content_type 'image/jpeg'
		picture_file_size 1.megabyte
		# picture { File.new("#{Rails.root}/spec/support/images/room-controller-valid.jpg") }
	end

	factory :rmcat do
		rmtype "The New Roomcat"
		# association :rooms, factory: :room
	end

	factory :extra do
		extraimg_file_name 'extra-controller-valid.jpg'
		extraimg_content_type 'image/jpeg'
		extraimg_file_size 1.megabyte
		name "The New Extra"
		description "The brilliant new extra"
		quantity "1"
		price "100"
	end

	factory :extracat do
		extratype "Beautiful"
	end

	factory :enquiry do
		subject "Wedding"
		e_description "I'd like a wedding."
	end

	factory :user do
		email "basicuser@mvmanor.co.uk"
		password "u"
		password_confirmation "u"
		customer_name "Mr Customer"
		admin false
		customer false
	end

	# Admin
	factory :admin, class: User do
		email "basicadmin@mvmanor.co.uk"
		password "a"
		password_confirmation "a"
		admin true
		customer false
	end
end
