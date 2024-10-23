require "sinatra"
require "sinatra/reloader"


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
