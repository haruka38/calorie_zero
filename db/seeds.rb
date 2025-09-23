# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

f1 = Food.create!(name: "ショートケーキ", calories: 350)
f1.excuses.create!(comment: "白いからカロリーゼロ")
f1.excuses.create!(comment: "苺はビタミンだからむしろ健康")
f1.excuses.create!(comment: "小さいからノーカウント")

f2 = Food.create!(name: "ラーメン", calories: 500)
f2.excuses.create!(comment: "カロリーはスープに溶け出しているので、スープを残せばカロリーゼロ")
f2.excuses.create!(comment: "野菜も入ってるから栄養バランスOK")

f3 = Food.create!(name: "ピザ", calories: 600)
f3.excuses.create!(comment: "野菜が乗ってるからヘルシー")
f3.excuses.create!(comment: "イタリア人はみんな食べてるから大丈夫")
