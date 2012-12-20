module UsersHelper

  def user_types
    I18n.t(:user_types).map { |key, value| [ value, key ] }
  end
end
