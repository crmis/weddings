FactoryGirl.define do

  factory :user do
    first_name "John"
    last_name  "Doe"
    admin false
    customer false
  end

  # Admin User
  factory :admin, class: User do
    first_name "Admin"
    last_name  "User"
    admin true
    customer false
  end

  # Customer User
  factory :customer, class: User do
    first_name "Admin"
    last_name  "User"
    admin false
    customer true
  end

  # :name, :description, :size, :capacity, :price, :picture, :rmcat_id
  factory :room do
    name "The New Room"
    description  "The Really Good New Room"
    size "250"
    capacity "650"
    price "2500"
    picture { File.new("#{Rails.root}/spec/support/images/room-controller-valid.jpg") }
  end


end
