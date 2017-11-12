import unidecode


DICO = {
    ",": "---",
    "'": "-**-",
    " ": "_",
}

REVERS_DICO = {
    "---": ",",
    "-**-": "'",
    "_": " ",
    "__": " ",
}


def replace(s):
    for k, v in DICO.iteritems():
        s = s.replace(k, v)
    return s


def uniencode(s):
    return unidecode.unidecode(replace(s))


def encode(s):
    return replace(s)


def decode(s):
    s = str(s)
    for k, v in REVERS_DICO.iteritems():
        s = s.replace(k, v)
    return s
