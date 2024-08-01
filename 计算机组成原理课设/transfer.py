file = 'test.txt'  # TODO
with open(file, 'r+', encoding='utf-8') as f:
    data = f.read()
    length = len(data.split('\n'))
    print(length)
    x = list(x[0:2] + '\n' for x in data.split('\n'))
    y = list(x[2:4] + '\n' for x in data.split('\n'))
    z = list(x[4:6] + '\n' for x in data.split('\n'))
    w = list(x[6:8] + '\n' for x in data.split('\n'))

    res = []
    res.append(x)
    res.append(y)
    res.append(z)
    res.append(w)
    # print(res)

    str = ''
    for j in range(0, length):
        for i, item in enumerate(res):
            str += item[j]
    print(str)
    f.seek(0)
    f.write(str)


