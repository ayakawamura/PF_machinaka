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
    },
    {
      name: 'AYAKA',
      email: 'ayaka@test.com',
      password: '111111'
    }
  ]
)

Post.create!(
  [
    {
      id: 1,
      user_id: 1,
      body: "近所の教会です。夜のライトアップが綺麗。",
      address: "北浜",
      latitude: 34.690301,
      longitude: 135.506671
    },
    {
      id: 2,
      user_id: 1,
      body: "中之島公園。最近よく行きます。",
      address: "中之島",
      latitude: 34.69164444764444,
      longitude: 135.51053204809622
    },
    {
      id: 3,
      user_id: 1,
      body: "淀屋橋の橋の上。夜のライトアップが綺麗でした。",
      address: "淀屋橋",
      latitude: 34.69312620222165,
      longitude: 135.5009936633859
    },
    {
      id: 4,
      user_id: 2,
      body: "先日納品したシャンデリアです。ホテル用に特注。",
      address: "三宮",
      latitude: 34.694022053319536,
      longitude: 135.1927557398463,
    },
    {
      id: 5,
      user_id: 3,
      body: "カフェの照明。ペンダントが可愛い。",
      address: "京都",
      latitude: 35.00390423033931,
      longitude: 135.7694259377733
    },
    {
      id: 6,
      user_id: 3,
      body: "カフェの照明。",
      address: "京都"
    },
    {
      id: 7,
      user_id: 4,
      body: "夜ですね。",
      address: "東京",
    },
    {
      id: 8,
      user_id: 5,
      body: "大都会！！わああああああああああああい",
      address: "神奈川",
    },
    {
      id: 9,
      user_id: 3,
      body: "パン屋さん。",
      address: "京都"
    },
    {
      id: 10,
      user_id: 4,
      body: "きれいでした。",
      address: "東京",
    },
    {
      id: 11,
      user_id: 5,
      body: "大自然・・・・・・。",
      address: "北海道",
    }
  ]
)

PostImage.create!(
  [
    {
      post_id: 1,
      image: File.open('./app/assets/images/park1.jpg')
    },
    {
      post_id: 1,
      image: File.open('./app/assets/images/park2.jpg')
    },
    {
      post_id: 1,
      image: File.open('./app/assets/images/top4.jpg')
    },
    {
      post_id: 2,
      image: File.open('./app/assets/images/top1.jpg')
    },
    {
      post_id: 3,
      image: File.open('./app/assets/images/top2.jpg')
    },
    {
      post_id: 4,
      image: File.open('./app/assets/images/top3.jpg')
    },
    {
      post_id: 5,
      image: File.open('./app/assets/images/sample1.jpg')
    },
    {
      post_id: 6,
      image: File.open('./app/assets/images/sample2.jpg')
    },
    {
      post_id: 7,
      image: File.open('./app/assets/images/sample3.jpg')
    },
    {
      post_id: 8,
      image: File.open('./app/assets/images/sample4.jpg')
    },
    {
      post_id: 9,
      image: File.open('./app/assets/images/sample5.jpg')
    },
    {
      post_id: 10,
      image: File.open('./app/assets/images/sample6.jpg')
    },
    {
      post_id: 11,
      image: File.open('./app/assets/images/sample7.jpg')
    }
  ]
)

Tag.create!(
  [
    {
      id: 1,
      name: "公園"
    },
    {
      id: 2,
      name: "芝生"
    },
    {
      id: 3,
      name: "夜"
    },
    {
      id: 4,
      name: "夜景"
    },
    {
      id: 5,
      name: "東京"
    },
    {
      id: 6,
      name: "ペンダントライト"
    },
    {
      id: 7,
      name: "スポットライト"
    },
    {
      id: 8,
      name: "看板灯"
    },
    {
      id: 9,
      name: "ドライブ"
    },
    {
      id: 10,
      name: "電球"
    },
    {
      id: 11,
      name: "LED"
    }
  ]
)

TagRelationship.create!(
  [
    {
      post_id: 1,
      tag_id: 1
    },
    {
      post_id: 1,
      tag_id: 2
    },
    {
      post_id: 1,
      tag_id: 3
    },
    {
      post_id: 2,
      tag_id: 4
    },
    {
      post_id: 2,
      tag_id: 5
    },
    {
      post_id: 3,
      tag_id: 6
    },
    {
      post_id: 4,
      tag_id: 7
    },
    {
      post_id: 5,
      tag_id: 8
    },
    {
      post_id: 6,
      tag_id: 9
    },
    {
      post_id: 7,
      tag_id: 10
    },
    {
      post_id: 3,
      tag_id: 3
    },
    {
      post_id: 5,
      tag_id: 7
    },
    {
      post_id: 10,
      tag_id: 11
    }
  ]
)

