class AddAdminInfoToUsers < ActiveRecord::Migration[5.1]
  def change
    User.create! do |u|
        u.email     = 'test@test.com'
        u.password    = 'password'
        u.admin    = true
    end
  end
end
