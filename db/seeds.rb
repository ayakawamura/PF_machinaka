# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 10.times do |n|
#   User.create!(
#     name: 'test#{n + 1}',
#     email: '#{n + 1}@test.com',
#     password: '111111'
#   )
# end

User.create!(
  [
    {
      name: 'HANAKO',
      email: 'hanako@test.com',
      password: '111111'
    },
    {
      name: 'TARO',
      email: 'taro@test.com',
      password: '111111'
    },
    {
      name: 'AKARI',
      email: 'akari@test.com',
      password: '111111'
    },
    {
      name: 'JIRO',
      email: 'jiro@test.com',
      password: '111111'
    }
  ]
)

Post.create!(
  [
    {
      user_id: 1,
      body: "近所の教会です。夜のライトアップが綺麗。",
      address: "北浜",
      latitude: 34.690301,
      longitude: 135.506671
    },
    {
      user_id: 1,
      body: "中之島公園。最近よく行きます。",
      address: "中之島",
      latitude: 34.69164444764444,
      longitude: 135.51053204809622
    },
    {
      user_id: 1,
      body: "淀屋橋の橋の上。夜のライトアップが綺麗でした。",
      address: "淀屋橋",
      latitude: 34.69312620222165, 
      longitude: 135.5009936633859
    },
    {
      user_id: 2,
      body: "先日納品したシャンデリアです。ホテル用に特注。",
      address: "三宮",
      latitude: 34.694022053319536,
      longitude: 135.1927557398463, 
    },
    {
      user_id: 3,
      body: "カフェの照明。ペンダントが可愛い。",
      address: "京都",
      latitude: 35.00390423033931,
      longitude: 135.7694259377733,
    },
  ]
)

PostImage.create!(
  post_id: 1,
  image: File.open('./app/assets/images/park1.jpg')
)