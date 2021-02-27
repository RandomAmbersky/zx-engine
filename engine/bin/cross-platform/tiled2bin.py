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

def getLayerData (xml_level):
    xml_map = xml_level.getElementsByTagName("map")[0]
    xml_layer_1 = xml_map.getElementsByTagName("layer")[0]
    xml_layer_data = xml_layer_1.getElementsByTagName("data")[0]
    cells_data = xml_layer_data.firstChild.data
    return cells_data

def getCells (str_cells):
    cells = str_cells.strip().split('\n')
    return cells

# def convertCellsToString (str_cells):
#     in_cells = str_cells[0:-1].strip().split(',')
#     ints = [int(s)-1 for s in in_cells]
#     out_cells = str(',').join([str(s) for s in ints])
#     return out_cells

def convertCellsToBytes (str_cells):
    in_cells = str_cells[0:-1].strip().split(',')
    ints = [int(s)-1 for s in in_cells]
    out_bin = bytearray(ints)
    return out_bin

def main():
    parser = createparser()
    namespace = parser.parse_args(sys.argv[1:])
    xml_level = parse(namespace.input)
    cells_data = getLayerData(xml_level)
    cells = getCells(cells_data)

    # with open(namespace.output, "w") as fh:
    #     for cell in cells:
    #         conv_cells = convertCells(cell)
    #         out = ' defb ' + conv_cells + '\n'
    #         fh.write(out)

    with open(namespace.output, "wb") as fh:
        for cell in cells:
            conv_cells = convertCellsToBytes(cell)
            fh.write(conv_cells)

if __name__ == '__main__':
    main()
