namespace :gemfile_info do
  desc 'Show a friendly description about gems into your Gemfile.'
  task :desc do
    gemfile = Rails.root + "Gemfile"
    gem_list = []
    File.open(gemfile.to_path) do |file|
      file.each do |line|        
        if line =~ /^gem/ || line =~ /^\s\sgem/
          gem_name = line.strip.split(/\s/).second.gsub(/[,('|")]/, '')
          if gem_name.present?
            gem_list << gem_name
          end
        end 
      end
    end
    gem_list.each do |gem_name|
      puts %x[gem list #{gem_name} -le --details]
      puts "\n\n"
    end
    puts "Total Gems: #{gem_list.size}"
  end
end
