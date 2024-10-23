require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')


get ("/dice/2/6") do
    first_die = rand(1..6)
    second_die = rand(1..6)
    sum = first_die + second_die

    outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

    "<h1>2d6</h1>
    <p>#{outcome}</p>"
end

get ("/dice/2/20") do
    first_die = rand(1..20)
    second_die= rand(1..20)
    sum = first_die + second_die

    outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."

    "<h1>2d20</h1>
    <p>#{outcome}</p>"


end
