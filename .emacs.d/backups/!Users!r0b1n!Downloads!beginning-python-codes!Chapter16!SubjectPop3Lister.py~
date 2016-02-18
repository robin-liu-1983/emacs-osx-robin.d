#!/usr/bin/python
from poplib import POP3
import email
class SubjectLister(PpOP3):
    """Connect to a POP3 mailbox and list the subject of every message
    in the mailbox."""
    def __init__(self, server, username, password):
        "Connect to the POP3 server."
        POP3.__init__(self, server, 110)
        #Uncomment this line to see the details of the POP3 protocol.
        #self.set_debuglevel(2)
        self.user(username)
        response = self.pass_(password)
        if response[:3] != '+OK':
            #There was a problem connecting to the server.
            raise Exception (response)
    def summarize(self):
        "Retrieve each message, parse it, and print the subject."
        numMessages = self.stat()[0]
        print('%d message(s) in this mailbox.' % numMessages)
        parser = email.Parser.Parser()
        for messageNum in range(1, numMessages+1):
            messageString = '\n'.join(self.top(messageNum, 0)[1])
            message = parser.parsestr(messageString)
            #message = parser.parsestr(messageString, True)
            print('', message['Subject'])
