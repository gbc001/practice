import hashlib

def gen_sigin(*args):
    m = hashlib.md5()
    m.update(''.join(args).encode('utf-8'))
    return m.hexdigest()
