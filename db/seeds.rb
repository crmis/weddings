User.create!([
  {email: "testadmin@mvmanor.co.uk", password: "a", password_confirmation: "a", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 4, current_sign_in_at: "2015-03-13 18:17:07", last_sign_in_at: "2015-03-09 12:13:19", current_sign_in_ip: "::1", last_sign_in_ip: "127.0.0.1", admin: true, customer: false, customer_name: "Mr Admin"},
  {email: "testuser@mvmanor.co.uk", password: "u", password_confirmation: "u", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2015-02-06 14:03:01", last_sign_in_at: "2015-02-06 14:03:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false, customer: false, customer_name: "Mr User"},
  {email: "testcustomer@customer.co.uk", password: "c", password_confirmation: "c", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2015-03-09 12:19:43", last_sign_in_at: "2015-03-09 12:12:05", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", admin: false, customer: true, customer_name: "Mr Customer"}
])
Enquiry.create!([
  {subject: "Hello", e_description: "Hello there.", user_id: 3},
  {subject: "Wedding", e_description: "I want a wedding!", user_id: 3}
])
Extra.create!([
  {extraimg: nil, name: "Roses", description: "Red Rose bouquets.", quantity: 500, price: "350.0", extracat_id: 1, extraimg_file_name: "Red_Roses_Background.jpg", extraimg_content_type: "image/jpeg", extraimg_file_size: 4582604, extraimg_updated_at: "2015-03-02 12:55:23"},
  {extraimg: nil, name: "Rolls Royce", description: "Available in black or silver", quantity: 4, price: "600.0", extracat_id: 2, extraimg_file_name: "car_landing.jpg", extraimg_content_type: "image/jpeg", extraimg_file_size: 101949, extraimg_updated_at: "2015-03-06 11:45:15"},
  {extraimg: nil, name: "Photographer", description: "Professional Photography for the day.", quantity: 10, price: "300.0", extracat_id: 5, extraimg_file_name: "extras_7_landing.jpg", extraimg_content_type: "image/jpeg", extraimg_file_size: 51276, extraimg_updated_at: "2015-03-06 11:46:33"},
  {extraimg: nil, name: "Balineasy", description: "Jazz it up with this amazing Jazz band!", quantity: 1, price: "500.0", extracat_id: 4, extraimg_file_name: "livemusic.jpg", extraimg_content_type: "image/jpeg", extraimg_file_size: 2648088, extraimg_updated_at: "2015-03-06 12:00:59"},
  {extraimg: nil, name: "Professional Invitations", description: "Get your amazing invitaions done professionally by us.", quantity: 100, price: "250.0", extracat_id: 3, extraimg_file_name: "invitation.jpg", extraimg_content_type: "image/jpeg", extraimg_file_size: 529326, extraimg_updated_at: "2015-03-06 12:02:36"}
])
Extracat.create!([
  {extratype: "Flowers"},
  {extratype: "Cars"},
  {extratype: "Invitations"},
  {extratype: "Live Music"},
  {extratype: "Photography"}
])
Rmcat.create!([
  {rmtype: "Ceremony"},
  {rmtype: "Reception"}
])
Room.create!([
  {name: "Maple Room", description: "This beautiful ceremony room is one of our customers' favourite wedding settings. It can seat up to 100 people and can be decorated suited to your preferences. ", size: "586", capacity: 100, price: "500.0", picture: nil, picture_file_name: "CON_Maple_Room_Ceremony_1_04_2011.jpg", picture_content_type: "image/jpeg", picture_file_size: 99661, picture_updated_at: "2015-01-30 15:14:04", rmcat_id: 1},
  {name: "Castle Room", description: "this is a great gothic style castle wedding room. perfect if you're looking for something a bit different. It will surely leave you with a night to remember!", size: "344", capacity: 223, price: "300.0", picture: nil, picture_file_name: "Peckforton-Castle-wedding-venue-9.jpg", picture_content_type: "image/jpeg", picture_file_size: 113953, picture_updated_at: "2015-01-30 22:40:35", rmcat_id: 2},
  {name: "Regal Room", description: "This is the Regal Room. It has a real air of elegance for the perfect wedding reception.", size: "450", capacity: 200, price: "445.0", picture: nil, picture_file_name: "sferas-wedding-photography-014-570x350.jpg", picture_content_type: "image/jpeg", picture_file_size: 79925, picture_updated_at: "2015-01-30 22:46:51", rmcat_id: 2},
  {name: "Grand Hall", description: "This is the Grand Hall. If you are planning a wedding on a large scale, this would be perfect for you.", size: "860", capacity: 550, price: "700.0", picture: nil, picture_file_name: "venue.jpg", picture_content_type: "image/jpeg", picture_file_size: 59846, picture_updated_at: "2015-01-30 22:48:33", rmcat_id: 2},
  {name: "Beaumant", description: "The Beaumant may be one of our budget options but it does not scrimp on style. ", size: "350", capacity: 90, price: "180.0", picture: nil, picture_file_name: "wedding_reception_venues_chicago_-_las_vegas_reception_venues___las_vegas_wedding_blog.jpg", picture_content_type: "image/jpeg", picture_file_size: 622375, picture_updated_at: "2015-01-30 22:50:55", rmcat_id: 2},
  {name: "Belverdere", description: "This stunningly beautiful ceremony room brings a real touch off class to your big day!", size: "340", capacity: 150, price: "280.0", picture: nil, picture_file_name: "wedding-venues-chicago-belvedere.jpg", picture_content_type: "image/jpeg", picture_file_size: 206094, picture_updated_at: "2015-01-30 22:52:46", rmcat_id: 1},
  {name: "Winter Wonderland", description: "Looking for something different? This one has to be seen to be believed! ", size: "310", capacity: 100, price: "500.0", picture: nil, picture_file_name: "Winter-Wedding-Venue.jpg", picture_content_type: "image/jpeg", picture_file_size: 190953, picture_updated_at: "2015-01-30 22:54:28", rmcat_id: 1},
  {name: "Ambleside", description: "Give your guests a night to remember and party the night away in our Ambleside room!", size: "222", capacity: 140, price: "330.0", picture: nil, picture_file_name: "7688666.jpg", picture_content_type: "image/jpeg", picture_file_size: 93269, picture_updated_at: "2015-01-30 22:57:43", rmcat_id: 2},
  {name: "Lakeside", description: "Really impress your guests this summer and hold your ceremony beside our beautiful lake", size: "445", capacity: 300, price: "350.0", picture: nil, picture_file_name: "lakeside-wedding.jpg", picture_content_type: "image/jpeg", picture_file_size: 49628, picture_updated_at: "2015-01-30 23:00:09", rmcat_id: 1}
])
Viewing.create!([
  {start_time: "2015-08-01 10:00:00", end_time: "2015-08-01 11:59:00", length: 2, room_id: 1, user_id: 3},
  {start_time: "2015-09-02 11:00:00", end_time: "2015-09-02 12:59:00", length: 2, room_id: 2, user_id: 3}
])
Booking.create!([
  {start_time: "2015-08-01 10:00:00", end_time: "2015-08-01 11:59:00", length: 2, room_id: 1, user_id: 3},
  {start_time: "2015-09-02 11:00:00", end_time: "2015-09-02 12:59:00", length: 2, room_id: 2, user_id: 3}
])
