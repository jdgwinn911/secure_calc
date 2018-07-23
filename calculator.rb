def work(op, num1, num2)
    num1 = num1.to_i
    num2 =num2.to_i
    case op
    when "add"
        return add_num(num1, num2)
    when "subtract"
        return sub_num(num1, num2)
    when "multiply"
        return mult_num(num1, num2)
    when "divide"
        return divide_num(num1, num2)
    end
end

def class_check(a, b)
    val = 0
    if a.is_a?(Integer) || a.is_a?(Float)
        val += 1
    end
    if b.is_a?(Integer) || b.is_a?(Float)
        val += 1
    end
    if val == 2 then
        return true
    end
    false
end

def add_num(a, b)
    unless class_check(a, b); return false; end
    a+b
end

def sub_num(a, b)
    unless class_check(a, b); return false; end
	a-b
end

def mult_num(a, b)
    unless class_check(a, b); return false; end
	a*b
end

def divide_num(a, b)
    unless class_check(a, b); return false; end
    if b == 0
        return "you cannot divide by zero"
    else
         a/b 
    end
end