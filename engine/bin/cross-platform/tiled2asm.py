# Hardcode exporter from TIled map first layer data to defb asm
# example:
# python3 tiled2asm.py -i map.tmx -o map.asm

import argparse
import sys

from xml.dom.minidom import parse

def createparser():
    myparser = argparse.ArgumentParser()
    myparser.add_argument('-i', '--input', type=str)
    myparser.add_argument('-o', '--output', default='cells.asm', type=str)
    return myparser

def main():
    parser = createparser()
    namespace = parser.parse_args(sys.argv[1:])
    xml_level = parse(namespace.input)

    xml_map = xml_level.getElementsByTagName("map")[0]

    xml_layer_1 = xml_map.getElementsByTagName("layer")[0]
    xml_layer_data = xml_layer_1.getElementsByTagName("data")[0]

    cells_data = xml_layer_data.firstChild.data
    cells = cells_data.strip().split('\n')

    with open(namespace.output, "w") as fh:
        for cell in cells:
            out = ' defb '+cell[0:-1] + '\n'
            fh.write(out)

if __name__ == '__main__':
    main()
