#!usr/bin/python
import json
import logging
from logging import config, getLogger
from time import sleep

from rfc5424logging import Rfc5424SysLogHandler


def main():
    print("Starting")

    with open("/etc/logging.json", "r") as logging_f:
        logging_config = json.load(logging_f)

    config.dictConfig(logging_config)

    logger = logging.getLogger("app")

    logger.info("Syslog test")
    i = 0
    while True:
        if i % 15:
            logger.error("fizzbuzz")
        if i % 3:
            logger.info("fizz")
        elif i % 5:
            logger.warning("buzz")
        i += 1
        sleep(1)


if __name__ == '__main__':
    main()
