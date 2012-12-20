class UserType < ActiveRecord::Base

  def translated_user_type
    I18n.t(user_type, :scope => :user_types)
  end

end