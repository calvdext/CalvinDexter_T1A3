require "tty-prompt"

$prompt = TTY::Prompt.new

result = $prompt.collect do
    key(:user_name).ask("Name?")
  
    key(:age).ask("Age?")
  
end

puts result