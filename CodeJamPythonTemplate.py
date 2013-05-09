f = open('A-large.in', 'r')
o = open('A-large.out', 'w')

T = int(f.readline().strip())

for t in range(T):
    (A, B) = map(int, f.readline().strip().split(' '))
    res = best_answer
    s = "Case #%d: %s\n" % (t+1, res)
o.close()