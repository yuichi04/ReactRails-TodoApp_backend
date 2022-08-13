puts 'Creating todos...'

# 適当なTodoを5つ作成
1.times do |i|
  Todo.create(content: "Todo#{i + 1}")
end

puts '...Finished!'