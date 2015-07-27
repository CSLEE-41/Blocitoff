namespace :todo do
  desc "Delete items older than seven days"
  task delete_items: :environment do
     items = Item.where("created_at <= ?", Time.now - 7.days)
     puts "#{Item.all.count} before deletion."
     puts "Deleting #{items.count} items NOW"
     items.destroy_all
     puts "#{Item.all.count} remaining."
   end
end
