#! /usr/bin/env python
# -*- coding: utf-8 -*-
# %FILE%.py
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
import logger

PP = pprint.PrettyPrinter().pprint

parser = argparse.ArgumentParser()
parser.add_argument("--debug", action="store_true", default=False, help="whether to debug")
parser.add_argument("--output_dir", type=str, default='/tmp', help="")
parser.add_argument("--num", type=float, default=0.7, help="")


def init_logger(logger_name=None, filename=None):
    logging.addLevelName(logging.WARNING, "\033[1;31m%s\033[1;0m" % ' WRAN')
    logging.addLevelName(logging.ERROR, "\033[1;41m%s\033[1;0m" % 'ERROR')
    logging.addLevelName(logging.INFO, "%s" % ' INFO')
    # FORMAT = "%(asctime)s - %(name)s - %(levelname)s - [%(filename)s:%(lineno)s - %(funcName)20s() ] %(message)s"
    FORMAT = "[%(levelname)s]%(asctime)s - [line:%(lineno)s - %(funcName)10s() ] %(message)s"
    formatter = logging.Formatter(FORMAT)

    logger = logging.getLogger(logger_name)

    stream_handler = logging.StreamHandler()
    stream_handler.setFormatter(formatter)
    logger.addHandler(stream_handler)

    if filename is not None:
        log_file_path = filename
        file_handler = logging.FileHandler(log_file_path, mode='a', encoding=None, delay=False)
        file_handler.setFormatter(formatter)
        logger.addHandler(file_handler)

    logger.setLevel(logging.INFO)
    logger.propagate = False
    return logger


def main():
    args = parser.parse_args()


if __name__ == "__main__":
    main()
