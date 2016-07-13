#write your code here
def add(a,b)
	return a+b
end
def subtract(a,b)
	return a-b
end

def sum (a)
	return a.inject(0) {|sum, i|  sum + i }
	
end
def multiply *args
	args.reduce(:*)
end
def power(x,y)
	x**y
end
def factorial (x)
	if (x==0 || x==1)
		return 1
	else
		return (x*factorial(x-1))
	end
end
			
