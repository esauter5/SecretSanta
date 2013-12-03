task :generate_match_index => :environment do
   users = User.all
   count = users.count
  gifters = (1..count).to_a
  giftees = gifters.shuffle
  
  (0..count-1).each do |n|
    puts "#{gifters[n]} #{giftees[n]}"
  end

  (1..count).each do |n|
    ind = gifters.index { |x| x == n }
    giftee_num = giftees[ind]
    giftee_i = gifters.index { |y| y == giftee_num }

    if gifters[ind] == giftees[giftee_i]
      puts "#{gifters[ind]} #{giftees[ind]}"
      puts "DUPE!!!"
    end
  end 

  gifters.each do |n|
    santa = User.find(n)
    receiver = User.find(giftees[n-1])
    santa.giftee = "#{receiver.first_name} #{receiver.last_name}"
    santa.save!
  end
end
