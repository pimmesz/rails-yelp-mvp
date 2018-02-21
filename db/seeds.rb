   # t.string "name"
   #  t.string "address"
   #  t.integer "phone_number"
   #  t.string "category"
   #  t.datetime "created_at", null: false
   #  t.datetime "updated_at", null: false

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  0637276171,
    category: 'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  0637276171,
    category: 'chinese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
