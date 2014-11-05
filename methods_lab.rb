require 'rational'

def simplify(n, d)
  gcd = n.gcd(d)
  simple_n = n/gcd
  simple_d = d/gcd
  [simple_n, simple_d]
end

def put_method(array)
  puts array.insert(1, '-',)
	puts "
"
end

def multiply(n1, d1, n2, d2)
  numerator = n1 * n2
  denominator = d1 * d2
  simplify(numerator, denominator)
end

def subtract(n1, d1, n2, d2)
  d = d1 * d2
  n1 = n1 * d2
  n2 = n2 * d1
  n = n1 - n2
  [n, d]
  simplify(n, d)
end

def add(n1, d1, n2, d2)
  d = d1 * d2
  n1 = n1 * d2
  n2 = n2 * d1
  n = n1 + n2
  [n, d]
  simplify(n, d)
end

def convert(n, d)
  if n > d
    simplify(n, d)
    remainder = n % d
    denominator = d
    whole_num = n/d
    puts [whole_num, "and", remainder,"-", denominator]
  else puts "all done"
  end
end
