desc 'Counter cache for categories has many posts'

task post_counter: :environment do
  Category.reset_column_information
  Category.find_each do |x|
     x
    Category.reset_counters x.id, :posts
  end
end