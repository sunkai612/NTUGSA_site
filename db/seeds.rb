# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

create_rotators = for i in 1..5 do
  Rotator.create! ([title: "封面#{i}", image_order: "#{i}"])
end
puts "rotator's data created"

create_intros = Intro.create!([title: "簡介", content: "這裡是內容"])
puts "intro's data created"

create_organizations = for i in 1..5 do
  Organization.create!([title: "部門#{i}", content: "這裡是內容"])
  for j in 1..5 do
    Member.create!([organization_id: "#{i}", name: "部員#{j}", intro: "這裡是內容", order: "#{j}"])
    Record.create! ([title: "記錄#{j}", organization_id: i, content: "這裡是內容", date: "201412301900"])
  end
end
puts "organization's data created"
puts "members' data created"
puts "records' data created"

create_statute = Statute.create!([title: "章程", content: "這裡是內容"])
puts "statute's data created"

create_events = for i in 1..10 do
  Event.create! ([title: "活動#{i}", content: "這裡是內容"])
end
puts "events' data created"

create_administrator = Administrator.create!([email: 'root@gmail.com', password: '11111111', password_confirmation: '11111111', name: 'root'])
puts "administrator's data created"


create_board = Board.create!([name: "討論區", description: "這是一個討論區"])
puts "first board created"


create_post = for i in 1..10 do
	Post.create!([title: "第#{i}篇文章", type_name: "測試", content: "testing!testing!testing!", board_id: "1", author: "testboy"])
	for j in 1..10 do
		Comment.create!([commenter: "這是第#{j}個評論", content: "這是第#{j}個評論", board_id: "1", post_id: "#{i}"])
	end
end
puts "10 posts created"
puts "10 comments within each post createdb"

