import os
import statistics
import sys
import copy
from common_util import is_int, as_int

assert len(sys.argv) > 1

fmts = sys.argv[1:]

results = {}

for fmt in fmts:
    results.setdefault(fmt, {})
    for i in range(0, 5):
        lines = []
        fname = fmt.format(i)
        if not os.access(fname, os.R_OK):
            break
        for line in open(fname):
            pieces = line.split(",")
            if len(pieces) > 100:
                j = 0
                while j < len(pieces) and (not is_int(pieces[j])):
                    j += 1

                results[fmt].setdefault(lines[-1], []).append(
                    [int(x) for x in pieces[j:]])
            lines.append(line)

res_len = None
for fmt in fmts:
    for key in results[fmt]:
        ordered = None
        og_len = None
        for res in results[fmt][key]:
            if og_len is None:
                og_len = len(res)
                res_len = og_len
                ordered = [[] for i in range(0, og_len)]

            assert og_len == len(res)
            for i in range(0, og_len):
                ordered[i].append(res[i])

        results[fmt][key] = copy.deepcopy(ordered)

keys = set()
for fmt in fmts:
    for key in results[fmt]:
        keys.add(key)
        for i in range(0, len(results[fmt][key])):
            results[fmt][key][i] = statistics.geometric_mean(
                results[fmt][key][i])

for key in keys:
    print(key.lstrip().rstrip())
    print("Size, {}, Tput Speedup".format(",".join(
        ["TPut-{}".format(x.split("-")[0]) for x in fmts])))
    for i in range(0, res_len):
        if i <= 15:
            #continue
            pass
        if i > 127:
            #continue
            pass
        print(str(i + 129), end=",")
        avg = []
        for fmt in fmts:
            assert fmt in results
            assert key in results[fmt], results[fmt]
            print("{:.3E}".format(results[fmt][key][i]), end=",")
            avg.append(results[fmt][key][i])
        avg = statistics.mean(avg)
        if len(fmts) == 2:
            print("{:.3f}".format(1.0 / (results[fmts[0]][key][i] / results[fmts[1]][key][i])))
        else:
            assert False

