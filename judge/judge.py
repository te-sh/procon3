import os
import re
import shutil
import subprocess
import time

from watchdog.events import FileSystemEventHandler
from watchdog.observers import Observer

class JudgeRunner:
    def run(self, path):
        self.path = path
        print('====================', path)
        self.chdir()

        url = self.get_url()
        if url is not None:
            self.download(url)

    def get_url(self):
        with open(self.path, mode='r') as file:
            for line in file:
                m = re.match(r'(//|#) URL: (.*)', line)
                if m:
                    return m.group(2)
            return None

    def chdir(self):
        os.chdir(os.path.dirname(self.path))

    def download(self, url):
        url_file = 'url'
        prev_url = self.read_url_memo()
        if url == prev_url:
            return
        print('--- download')
        shutil.rmtree('test', ignore_errors=True)
        subprocess.run(['oj', 'download', url], check=True)
        self.write_url_memo(url)

    def read_url_memo(self):
        if os.path.exists('url'):
            return open('url', mode='r').read()
        else:
            return None

    def write_url_memo(self, url):
        open('url', mode='w').write(url)

class ChangeHandler(FileSystemEventHandler):
    def __init__(self, judge_runner):
        last_modified = time.time()

    def on_created(self, event):
        self.on_changed(event.src_path)

    def on_modified(self, event):
        self.on_changed(event.src_path)

    def on_changed(self, path):
        if not os.path.exists(path) or os.path.isdir(path):
            return
        if os.path.basename(os.path.dirname(path)) == 'test':
            return
        if os.path.basename(path) == 'url':
            return
        judge_runner.run(path)

if __name__ == '__main__':
    judge_runner = JudgeRunner()
    event_handler = ChangeHandler(judge_runner)
    observer = Observer()
    observer.schedule(event_handler, '/codes', recursive=True)
    observer.start()

    try:
        while True:
            time.sleep(0.05)

    except KeyboardInterrupt:
        observer.stop()
        observer.join()
