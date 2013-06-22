module ApplicationHelper
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    image_tag("https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{options[:size]}&d=mm", alt: user.email, class: 'gravatar')
  end
end
