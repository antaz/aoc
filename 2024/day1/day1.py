#!/usr/bin/env python
import sys

a, b = zip(*[list(map(int, line.strip().split())) for line in sys.stdin])

# part 1
print(sum([abs(x - y) for x, y in zip(sorted(a), sorted(b))]))

# part 2
print(sum([x * b.count(x) for x in a]))
