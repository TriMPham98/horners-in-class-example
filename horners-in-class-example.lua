function Horners(coeffs, x)
    len = #(coeffs)
    y = coeffs[len]
    for i = len-1, 1, -1 do 
        y = y * x + coeffs[i]
    end
    return y
end

-- coeff = {-1, 5, -3, 3, 2}
-- x = 0.5
-- print(Horners(coeff, x))


function thisPoly(x)
     y = x * x
     z = y * x
     return y * z * Horners({2, 1, -3, 2}, z)
end

print(thisPoly(0.9))