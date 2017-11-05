import unidecode


def uniencode(s):
    return unidecode.unidecode(s.replace(",", "")
                               .replace("'", "_")
                               .replace(" ", "_"))


def encode(s):
    return s.replace(",", "").replace("'", "_").replace(" ", "_")


def decode(s):
    return str(s).replace('_', ' ').replace('__', ' ')