from threading import Thread

def checktracekey(line):
    if "TRACE" in line:
        print(line)

def readfiles():
    with open("../task_1_large_file.log") as input_file:
       for line in input_file:
            thread = Thread(target=checktracekey, args=(line,))
            threads.append(thread)
            thread.start()

    for thread in threads:
        thread.join()

if __name__ =="__main__":
    threads = []
    readfiles()
