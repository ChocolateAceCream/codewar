def exp_sum(n)
    @a = n.times.collect { [nil] * n }

    (0..n).each do |i|
        @a[i][0]=0
    end
    (1..n-1).each do |j|
        @a[0][j]=1
    end
    return partition(n,n-1)
end

def partition(sum, largest)
    (1..sum).each do |i|
        (1..largest).each do |j|
            if (i-j <0)
                @a[i][j]=@a[i][j-1]
                next
            end
            @a[i][j]=@a[i][j-1]+@a[i-j][j]
        end
    end
    p @a

    return @a[sum][largest]
end

p exp_sum(5)
