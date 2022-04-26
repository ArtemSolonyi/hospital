module ApplicationHelper

  def avatar_for(user)
    @avatar = user.avatar
    if !@avatar.attached?
      image_path('avatars-000310161593-2vpjr0-t500x500.jpg')
    else
      @avatar.url
    end
  end

end
