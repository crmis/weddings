FactoryGirl.define do
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
    rmtype "New Roomcat"
    association :rooms, factory: :room
  end
end


# factory :user do
#   first_name "John"
#   last_name  "Doe"
#   admin false
#   customer false
# end
#
# # Admin
# factory :admin, class: User do
#   first_name "Admin"
#   last_name  "User"
#   admin true
#   customer false
# end
#
# # Customer
# factory :customer, class: User do
#   first_name "Admin"
#   last_name  "User"
#   admin false
#   customer true
# end
