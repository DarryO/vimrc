#! /usr/bin/env python
# -*- coding: utf-8 -*-
# vim:fenc=utf-8
#
# Copyright © %YEAR% %USER% <%MAIL%>
#
# Distributed under terms of the %LICENSE% license.

"""
%HERE%
"""

import os
import sys
import argparse
import pprint

PP = pprint.PrettyPrinter().pprint

parser = argparse.ArgumentParser()
parser.add_argument("--debug", action="store_true", default=False, help="whether to debug")
parser.add_argument("--output_dir", type=str, default='/tmp', help="")
parser.add_argument("--num", type=float, default=0.7, help="")


def main():
    args = parser.parse_args()


if __name__ == "__main__":
    main()
