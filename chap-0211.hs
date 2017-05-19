waxOn = x * 5
  where z = 7
        x = y ^ 2
        y = z + 8

triple x = x * 3
double x = x * 2

waxOff x = double $ triple x
