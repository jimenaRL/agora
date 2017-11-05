import unidecode


def uniencode(s):
    return unidecode.unidecode(s.replace(",", "")
                               .replace("'", "_")
                               .replace(" ", "_"))


def encode(s):
    return s.replace(",", "").replace("'", "_").replace(" ", "_")
