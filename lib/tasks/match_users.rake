task :match_users => :environment do
  users = User.all
  gifters = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
  giftees = gifters.shuffle
  
  (0..14).each do |n|
    puts "#{gifters[n]} #{giftees[n]}"
  end

  (1..15).each do |n|
    ind = gifters.index { |x| x == n }
    giftee_num = giftees[ind]
    giftee_i = gifters.index { |y| y == giftee_num }

    if gifters[ind] == giftees[giftee_i]
      puts "#{gifters[ind]} #{giftees[ind]}"
      puts "DUPE!!!"
    end

  end
end
