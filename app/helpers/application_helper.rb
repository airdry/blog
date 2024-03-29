# frozen_string_literal: true

module ApplicationHelper
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.username, class: 'img-circle')
  end

  def preferred_color
    if current_user && current_user.color.present?
      current_user.color
    else
      '#fff'
    end
  end
end
