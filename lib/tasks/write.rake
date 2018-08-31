namespace :gemfile_info do
  desc 'Show a friendly description about gems into your Gemfile.'
  task :desc do
    gemfile = Rails.root + "Gemfile"
    File.open(gemfile.to_path) do |file|
      preview_line = nil
      file.each do |line|        
        if line =~ /^gem/ || line =~ /^\s\sgem/
          if preview_line.present? && preview_line !~ /^gem/ && preview_line !~ /^\s\sgem/ 
            puts line.strip
            puts "desc: #{preview_line.strip}"
            puts "\n\n"
          end
        end 
        preview_line = line
      end
    end
  end
end
