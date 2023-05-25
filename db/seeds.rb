
users = [
  { email: 'thomas@example.com', first_name: 'Thomas', last_name: 'Bush', admin: true, bio: 'Hey!' },
  { email: 'bear@example.com', first_name: 'Bear', last_name: 'Bush', admin: false, bio: 'Woof!' },
]

users.each do |user|
  this_user = User.where(
    email: user[:email],
  ).first_or_initialize

  this_user.update!(
    first_name: user[:first_name],
    last_name: user[:last_name],
    admin: user[:admin],
    bio: user[:bio],
    password: SecureRandom.uuid,
  )
  this_user.save
end

