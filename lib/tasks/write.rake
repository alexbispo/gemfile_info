namespace :gemfile_info do
  desc 'Show a friendly description about gems into your Gemfile.'
  task :desc do
    gemfile = Rails.root + "Gemfile"
    total_gems = 0
    File.open(gemfile.to_path) do |file|
      preview_line = nil
      file.each do |line|        
        if line =~ /^gem/ || line =~ /^\s\sgem/
          total_gems += 1
          puts line.strip
          if preview_line.present? && preview_line =~ /^#/ || preview_line =~ /^\s\s#/ 
            puts "desc: #{preview_line.strip}"
          else
            puts "desc: Nothing yet!"
          end
          puts "\n\n"
        end 
        preview_line = line
      end
    end
    puts "Total Gems: #{total_gems}"
  end
end
