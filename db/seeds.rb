(1..2).each do |i|
    Page.create!(title: "Public Page #{i}", content: "Public content #{i}", allow_unauth: true) rescue nil
    Page.create!(title: "Private Page #{i}", content: "Super secret content #{i}", allow_unauth: false) rescue nil
  end
  
  User.create!(email: 'eric.london@example.com', password: 'password')