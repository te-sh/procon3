import os
import time

from watchdog.events import FileSystemEventHandler
from watchdog.observers import Observer

class ChangeHandler(FileSystemEventHandler):
    def __init__(self):
        last_modified = time.time()

    def on_created(self, event):
        print('created %s' % event.src_path)

    def on_modified(self, event):
        print('modified %s' % event.src_path)

if __name__ == '__main__':
    event_handler = ChangeHandler()
    observer = Observer()
    observer.schedule(event_handler, '/codes', recursive=True)
    observer.start()

    try:
        while True:
            time.sleep(0.05)

    except KeyboardInterrupt:
        observer.stop()
        observer.join()
