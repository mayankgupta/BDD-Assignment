class Calculator(object):
    def add(self, x, y):
        number_types = (int, long, float, complex)

        if isinstance(x, number_types) and isinstance(y, number_types):
            return x + y
        else:
            raise ValueError


    def multiply(self, x, y):
        number_types = (int, long, float, complex)

        if isinstance(x, number_types) and isinstance(y, number_types):
            return x * y
        else:
            raise ValueError

    def volume(self, l, h, b):
        number_types = (int, long, float, complex)
        if isinstance(l, number_types) and isinstance(h, number_types) and isinstance(b, number_types):
            if l < 0 or h < 0 or b < 0:
                return None
            volume = l * h * b
            return volume
        else:
            raise ValueError


    def factorial(self, n):
        number_types = (int, long)

        if isinstance(n, number_types):
            if n < 0:
                return None
            else:
                result = 1
                for i in range(1, n+1, 1):
                    result = result * i
                return result
        else:
            raise ValueError
