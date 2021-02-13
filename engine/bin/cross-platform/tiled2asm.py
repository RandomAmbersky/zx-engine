import argparse
import sys


def createparser():
    myparser = argparse.ArgumentParser()
    myparser.add_argument('-i', '--input', type=str)
    myparser.add_argument('-o', '--output', default='cells.asm', type=str)
    return myparser


def error(message):
    print(message, file=sys.stderr)
    exit(1)


def main():
    parser = createparser()
    namespace = parser.parse_args(sys.argv[1:])


if __name__ == '__main__':
    main()
