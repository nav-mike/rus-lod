class AddUser < ActiveRecord::Migration
  def up
    User.create email: 'm.navrotskiy@gmail.com', password: '12345678'
  end

  def down
    User.where(email: 'm.navrotskiy@gmail.com').delete_all
  end
end
