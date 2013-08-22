require 'rubygems'
require 'bundler/setup'
require 'github_api'

def save_the_beers(args)

  if args.length != 1
  	puts "USAGE: ./enable_beer <GH USERNAME>"
    exit
  end

  begin
    require 'io/console'
  rescue LoadError
  end

  if STDIN.respond_to?(:noecho)
    def get_password(prompt="Password: ")
      print prompt
      STDIN.noecho(&:gets).chomp
    end
  else
    def get_password(prompt="Password: ")
      `read -s -p "#{prompt}" password; echo $password`.chomp
    end
  end

  pwd = Dir.pwd
  `ln -f -s ~/Dropbox #{pwd}/dropbox`
  `mkdir -p #{pwd}/dropbox/gh_rescued_beers`
  `mkdir -p #{pwd}/sources`

  user = args[0]

  pass = get_password("Enter your GH password here for #{user}: ")
  github = Github.new login: user, password: pass

  puts "Listing repos with #BACKUP in the description"
  a = github.repos.list(:sources)

  puts "-> Repos marked #BACKUP in the description"
  puts "-------"

  marked = a.select { | r | r.description.match('#BACKUP') }
  marked.each do |repo|
  	puts "-> #{repo.full_name} - #{repo.description}"
  end

  marked.each do |repo|
  	puts "Cloning...."
  	`git clone #{repo.ssh_url} #{pwd}/sources/#{repo.name}`
  	`cd #{pwd}/sources && tar czvf #{repo.name}.tgz #{repo.name}`
  end
  `cp #{pwd}/sources/*.tgz #{pwd}/dropbox/gh_rescued_beers`

  puts "Add #BACKUP in the description to back it up.."
end