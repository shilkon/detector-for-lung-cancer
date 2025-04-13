import multiprocessing

from util.util import importstr
from util.logconf import logging
log = logging.getLogger('nb')
def run(app, *argv):
    argv = list(argv)
    argv.insert(0, f'--num-workers={multiprocessing.cpu_count()}')
    log.info(f"Running: {app}({argv!r}).main()")

    app_cls = importstr(*app.rsplit('.', 1))
    app_cls(argv).main()

    log.info(f"Finished: {app}.{argv!r}.main()")