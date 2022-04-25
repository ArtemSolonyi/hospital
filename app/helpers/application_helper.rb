module ApplicationHelper

  def avatar_for(user)
    @avatar = user.avatar
    if !@avatar.attached?
      'https://i1.sndcdn.com/avatars-000310161593-2vpjr0-t500x500.jpg'
    else
      @avatar.url
    end
  end

end
