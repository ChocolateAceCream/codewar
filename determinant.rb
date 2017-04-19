def find(matrix)
    return matrix[0][0]*matrix[1][1]-matrix[0][1]*matrix[1][0] if matrix.length == 2
    return matrix[0][0] if matrix.length ==1
    sum = 0
    (0...matrix.length).each do |i|
        if i%2 ==0
            sum=sum+matrix[0][i]*find(trans(matrix,i))
        else
            sum=sum-matrix[0][i]*find(trans(matrix,i))
        end
    end
    return sum
end

def trans(a,i)
     a=a.transpose
     a.delete_at(i)
     a=a.transpose
     a.delete_at(0)
     return a
end

a=[[2,5,3], [1,-2,-1], [1, 3, 4]]
p find(a)
