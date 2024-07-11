import logging

root_logger = logging.getLogger("root")
root_logger.setLevel(logging.DEBUG)

terminal_handler = logging.StreamHandler()
terminal_handler.setLevel(logging.INFO)

formatter = logging.Formatter(
    "%(asctime)s %(levelname)s %(name)s:%(lineno)d %(message)s"
)
terminal_handler.setFormatter(formatter)

root_logger.addHandler(terminal_handler)
