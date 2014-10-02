# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create_rotators = for i in 1..5 do
#   Rotator.create! ([title: "封面封面封面封面封面封面封面封面封面", image_order: "#{i}", link: "https://www.google.com/testqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq"])
# end
# puts "rotator's data created"

# create_intros = Intro.create!([title: "簡介簡介簡介簡介簡介", content: "這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容"])
# puts "intro's data created"

# create_organizations = for i in 1..5 do
#   Organization.create!([title: "部門部門部門部門部門", content: "這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容"])
#   for j in 1..5 do
#     Member.create!([organization_id: "#{i}", 
#                                   name: "部員部員", 
#                                   intro: "這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容", member_order: "#{j}"])
#     Record.create! ([title: "標題標題標題標題標題", 
#                               description: "副標副標副標副標副標副標副標副標啊", 
#                               content: "這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容", 
#                               organization_id: i, 
#                               date: "201409101800", 
#                               location: "地點地點地點地點地點地點地點"])
#   end
# end
# puts "organization's data created"
# puts "members' data created"
# puts "records' data created"

# create_statute = Statute.create!([title: "章程章程章程章程章程章程章程章程章程", content: "這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容"])
# puts "statute's data created"

# create_events = for i in 1..10 do
#   Event.create! ([title: "標題標題標題標題標題", 
#                               description: "副標副標副標副標副標副標副標副標啊", 
#                               content: "這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容", 
#                               organization: "社團社團社團社團社團啊", 
#                               is_gsa: "true",
#                               event_date: "201409101800", 
#                               location: "地點地點地點地點地點地點地點"])
# end
# puts "events' data created"

#create_administrator = Administrator.create!([email: 'root@gmail.com', password: '11111111', password_confirmation: '11111111', name: 'root'])
Administrator.create!([email: 'his9726@gmail.com', password: '11111111', password_confirmation: '11111111', name: '周芷萱'])
Administrator.create!([email: 't0444564@gmail.com', password: '11111111', password_confirmation: '11111111', name: '呂治鴻'])
Administrator.create!([email: 'fordayever@gmail.com', password: '11111111', password_confirmation: '11111111', name: '黃維家'])
Administrator.create!([email: 'minruyu@gmail.com', password: '11111111', password_confirmation: '11111111', name: '于閔如'])
Administrator.create!([email: 'sophiamag@gmail.com', password: '11111111', password_confirmation: '11111111', name: '林雨潸'])
Administrator.create!([email: 'boweichen0515@gmail.com', password: '11111111', password_confirmation: '11111111', name: '陳伯瑋'])
Administrator.create!([email: 'Litigatoryang@gmail.com', password: '11111111', password_confirmation: '11111111', name: '楊明勳'])
Administrator.create!([email: 'shindrgon@gmail.com', password: '11111111', password_confirmation: '11111111', name: '陳盈吉'])
Administrator.create!([email: 'j84255801912@gmail.com', password: '11111111', password_confirmation: '11111111', name: '賈脈瑄'])
Administrator.create!([email: 'pangyenchin@gmail.com', password: '11111111', password_confirmation: '11111111', name: '金邦諺'])
Administrator.create!([email: 'wairawa@gmail.com', password: '11111111', password_confirmation: '11111111', name: '潘威佑'])
Administrator.create!([email: 'fall80926@gmail.com', password: '11111111', password_confirmation: '11111111', name: '吳俊志'])
Administrator.create!([email: 'vuvudk@gmail.com', password: '11111111', password_confirmation: '11111111', name: '柯渝婕'])
Administrator.create!([email: 'daisyleeak@gmail.com', password: '11111111', password_confirmation: '11111111', name: '李盈佳'])
puts "administrator's data created"


# create_board = Board.create!([name: "討論區討論區討論區啊", description: "這是一個討論區這是一個討論區這是一個討論區這是一個討論區這是一個討論區這是一個討論區這是一個討論區"])
# puts "first board created"


# create_post = for i in 1..10 do
# 	Post.create!([title: "第篇文章第篇文章第篇文章第篇文章第篇文章", type_name: "測試", content: "這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容這裡是內容", board_id: "1", author: "testboyaa"])
# 	for j in 1..10 do
# 		Comment.create!([commenter: "這是第個評論這是第個評論好評論", content: "第幾篇文章第幾篇文章第幾篇文章第幾篇文章第幾篇文章第幾篇文章第幾篇文章第幾篇文章第幾篇文章第幾篇文章", board_id: "1", post_id: "#{i}"])
# 	end
# end
# puts "10 posts created"
# puts "10 comments within each post createdb"

