(1..100).to_a.each do |num|
  Todo.create(title: "Todo #{num}", completed: [true, false].sample)
end