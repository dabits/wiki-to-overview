require 'redmine'

Redmine::Plugin.register :forward_to_diffs do
  name 'Wiki to Overview'
  author 'Disqus (David Cramer)'
  url 'http://github.com/dcramer/wiki-to-overview'
  author_url 'http://www.disqus.com/'
  description 'Moves the Wiki tab to the Overview tab.'
  version '0.1'

  requires_redmine :version_or_higher => '0.8.0'
  
  Redmine::MenuManager.map :project_menu do |menu|
    menu.delete :overview
    wiki = menu.delete :wiki
    menu.push wiki.name, wiki.url, :param => wiki.param, :before => :activity
  end
end
