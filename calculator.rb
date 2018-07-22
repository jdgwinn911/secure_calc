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
    a/b 
end