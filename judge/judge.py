import os
import pathlib
import re
import shutil
import subprocess
import time

from watchdog.events import FileSystemEventHandler
from watchdog.observers import Observer


class JudgeRunner:
    def __init__(self, path):
        self.path = path
        self.url = path.with_name('url')

    def run(self):
        print('====================', self.path)
        self.chdir()

        url = self.get_url()
        if url is None:
            return

        try:
            self.download(url)
            self.compile()
            self.test()

        except subprocess.CalledProcessError:
            None

    def get_url(self):
        with open(self.path, mode='r') as file:
            for line in file:
                m = re.match(r'(//|#) URL: (.*)', line)
                if m:
                    return m.group(2)
            return None

    def chdir(self):
        os.chdir(self.path.parent)

    def download(self, url):
        prev_url = self.read_url_memo()
        if url == prev_url:
            return
        print('--- download')
        shutil.rmtree('test', ignore_errors=True)
        print(f'$ oj download {url}')
        subprocess.run(['oj', 'download', url], check=True)
        self.write_url_memo(url)

    def read_url_memo(self):
        if self.url.exists():
            return self.url.read_text()
        else:
            return None

    def write_url_memo(self, url):
        self.url.write_text(url)

    def compile(self):
        print('--- compile')
        print(f'crystal build -o a.out {self.path.name}')
        subprocess.run(['crystal', 'build', '-o', 'a.out', self.path], check=True)

    def test(self):
        print('--- test')
        print('oj test')
        subprocess.run(['oj', 'test'], check=True)


class ChangeHandler(FileSystemEventHandler):
    def on_created(self, event):
        self.on_changed(event.src_path)

    def on_modified(self, event):
        self.on_changed(event.src_path)

    def on_changed(self, src_path):
        path = pathlib.Path(src_path)

        if not path.exists() or path.is_dir():
            return

        if path.parent.name == 'test' or path.name == 'url' or path.name == 'a.out':
            return

        JudgeRunner(path).run()


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
