module SocialNetworksHelper
  FRIENDS_LINKS = {
    minskrb: {
      facebook: 'https://www.facebook.com/minskruby',
      vk: 'https://vk.com/bsuiror',
      youtube: 'https://www.youtube.com/channel/UCzZpyYSnff-NsjR4TbbBCiw',
      github: 'https://www.github.com/minskrb'
    },
    datarockets: {
      facebook: 'https://www.facebook.com/datarockets',
      vk: 'https://www.vk.com/datarockets',
      twitter: 'https://twitter.com/datarockets',
      youtube: 'https://www.youtube.com/channel/UC3FaevGv94T9zvtHlL9ch1g'
    },
    rubyroid: {
      facebook: 'https://www.facebook.com/rubyroidlabs',
      vk: 'https://www.vk.com/bsuiror',
      twitter: 'https://twitter.com/RubyroidLabs',
      youtube: 'https://www.youtube.com/channel/UCVMhNTgjF6jTeTmX-DXvQBw'
    },
    cybergizer: {
      facebook: 'https://www.facebook.com/cybergizer',
      linkedin: 'https://www.linkedin.com/company/cybergizer-llc',
      youtube: 'https://www.youtube.com/channel/UCmf-vqfDm6TlAdJU7djBXgQ'
    }
  }.freeze

  def link_to_social(company, social, icon = false, html_class = '')
    title = icon ? content_tag(:i, '', class: "icon fab fa-#{social}") : social.to_s.titleize
    link_to title, FRIENDS_LINKS.dig(company, social) || '#', target: '_blank', class: html_class
  end

  def youtube_title(link)
    VideoInfo.new(link).title
  end

  def youtube_embed_code(link)
    VideoInfo.new(link).embed_code
  end
end
