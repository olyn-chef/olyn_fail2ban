# Loop through each user item in the data bag
data_bag('system_users').each do |user_item|

  # Load the data bag item
  user = data_bag_item('system_users', user_item)

  # Skip users that are not system users with emails
  next unless user[:email] && user[:options]['fail2ban']

  # Set the fail2ban email address
  node.override[:fail2ban][:email] = user[:email]

end

# Run the fail2ban configuration recipe
include_recipe 'fail2ban'
