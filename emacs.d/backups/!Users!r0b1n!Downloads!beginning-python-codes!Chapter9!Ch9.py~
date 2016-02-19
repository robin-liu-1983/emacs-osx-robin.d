# These examples are not in individual functions in the chapter, but
# to isolate them, they are separated into individual functions here

def lambda_sample():
    # use lambda with filter
    filter_me = [1, 2, 3, 4, 6,7 ,8, 11, 12, 14, 15, 19, 22]
    # This will only return true for even numbers (because x%2 is 0, or False,
    # for odd numbers)
    result = filter(lambda x: x%2 == 0, filter_me)
    print(*result)


def lambda_named_sample():
    # use lambda with filter, but bind it to a name
    filter_me = [1, 2, 3, 4, 6,7 ,8, 11, 12, 14, 15, 19, 22]
    # This will only return true for even numbers (because x%2 is 0, or False,
    # for odd numbers)
    func = lambda x: x%2 == 0
    result = filter(func, filter_me)
    print(*result)


def map_sample():
    # Now map gets to be run in the simple case
    map_me = [ 'a', 'b', 'c', 'd', 'e', 'f', 'g' ]
    result = map(lambda x: "The letter is %s" % x, map_me)
    print(*result)

def map_sample2():
# use map with a list of lists, to re-order the output.
map_me_again = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
result = map(lambda list: [ list[1], list[0], list[2]], map_me_again)
print(*result)


def list_comprehension_sample():
    # First, just print even numbers
    everything = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 ]
    print([ x for x in everything if x%2 == 0 ])

def range_sample():
    # First an example of a range between two numbers
    f = range (10, 20)
    print(*f)

    # range works differently with only one parameter
    for number in range(10):
        print("Number is now %d" % number)

    # Using a stride
    for number in range(5, 55, 4):
        print("Number from 5 to 55, by fours: %d" % number)


def string_substitution_sample():
    person = {"name": "James", "camera": "nikon", "handedness": "lefty", "baseball_team": "angels", "instrument": "guitar"}

    print("%(name)s, %(camera)s, %(baseball_team)s" % person)

    person["height"] = 1.6
    person["weight"] = 80
    print("%(name)s, %(camera)s, %(baseball_team)s, %(height)2.2f, %(weight)2.2f" % person)    

    # An alternative way to perform these substitutions
    import string
    person = {"name": "James", "camera": "nikon", "handedness": "lefty", "baseball_team": "angels", "instrument": "guitar"}
    person["height"] = 1.6
    person["weight"] = 80
    t = string.Template("$name is $height m high and $weight kilos")
    print(t.substitute(person))


def getopt_sample():
    import sys
    import getopt
    # Remember, the first thing in the sys.argv list is the name of the command
    # You don't need that.
    cmdline_params = sys.argv[1:]

    opts, args = getopt.getopt(cmdline_params, 'hc:', ['help', 'config='])
    

    for option, parameter in opts:
   
        if option == '-h' or option == '--help':
            print("This program can be run with either -h or --help for this message,")
            print("or with -c or --config=<file> to specify a different configuration file")
        if option in ('-c', '--config'): # this means the same as the above
            print("Using configuration file %s" % parameter)

def gnu_getopt_sample():
    import sys
    import getopt
    # Remember, the first thing in the sys.argv list is the name of the command
    # You don't need that.
    cmdline_params = sys.argv[1:]

    opts, args = getopt.gnu_getopt(cmdline_params, 'hc:', ['help', 'config='])
    
    for option, parameter in opts:
   
        if option == '-h' or option == '--help':
            print("This program can be run with either -h or --help for this message,")
            print("or with -c or --config=<file> to specify a different configuration file")
        
        if option in ('-c', '--config'): # this means the same as the above
            print("Using configuration file %s" % parameter)

def fork_sample():
    import os
    pid = os.fork()
    # fork and exec together
    print("second test")
    if pid == 0: # This is the child
        print("this is the child")
        print("I'm going to exec another program now")
        os.execl('/bin/cat', 'cat', '/etc/motd')
    else:
        print("the child is pid %d" % pid)
        os.wait()        

def determine_platform_sample():
    import os, sys
    if sys.platform == 'win32':
        print("Running on a windows platform")
        command = "C:\\winnt\\system32\\cmd.exe"
        params = []
    
    if sys.platform == 'linux2':
        print("Running on a Linux system, identified by %s" % sys.platform)
        command = '/bin/uname'
        params = ['uname', '-a']

    print("Running %s" % command)
    os.spawnv(os.P_WAIT, command, params)


def os_system_sample():
    # Now system
    if sys.platform == 'win32':
        print("Running on a windows platform")
        command = "cmd.exe"

    if sys.platform == 'linux2':
        print("Running Linux")
        command = "uname -a"

    os.system(command)


def threading_sample():
#Using sub-classing
import math
from threading import Thread
import time

class SquareRootCalculator:

    """This class spawns a separate thread to calculate a bunch of square
    roots, and checks in it once a second until it finishes."""

    def __init__(self, target):
        """Turn on the calculator thread and, while waiting for it to
        finish, periodically monitor its progress."""
        self.results = []
        counter = self.CalculatorThread(self, target)
        print("Turning on the calculator thread...")
        counter.start()
        while len(self.results) < target:
            print("%d square roots calculated so far." % len(self.results))
            time.sleep(1)
        print("Calculated %s square root(s); the last one is sqrt(%d)=%f" %
              (target, len(self.results), self.results[-1]))
              
    class CalculatorThread(Thread):
        """A separate thread which actually does the calculations."""

        def __init__(self, controller, target):
            """Set up this thread, including making it a daemon thread
            so that the script can end without waiting for this thread to
            finish."""
            Thread.__init__(self)
            self.controller = controller
            self.target = target
            self.setDaemon(True)

        def run(self):
            """Calculate square roots for all numbers between 1 and the target,
            inclusive."""
            for i in range(1, self.target+1):
                self.controller.results.append(math.sqrt(i))

if __name__ == '__main__':
    import sys
    limit = None
    if len(sys.argv) > 1:
        limit = sys.argv[1]
        try:
            limit = int(limit)
        except ValueError:
            print("Usage: %s [number of square roots to calculate]" 
                  % sys.argv[0])  
    SquareRootCalculator(limit)


    
