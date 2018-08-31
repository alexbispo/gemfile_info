class GemfileInfo::Railtie < Rails::Railtie
  rake_tasks do
    load 'tasks/write.rake'
  end
end