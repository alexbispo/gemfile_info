class GemfileInfo::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/gemfile_info.rake'
  end
end