def fact(n)
    if n == 0
        1
    elsif n < 0
        'n must > 1'
    else
        n * fact(n-1)
    end
end

puts fact(ARGV[0].to_i)
