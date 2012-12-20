class User < ActiveRecord::Base
  attr_accessible :address1, :address2, :address3, :address4, :email, :fax, :first_name, :last_name, :mobile, :phone, :user_name, :user_type

  def translated_user_type
    I18n.t(user_type, :scope => :user_types)
  end

end
