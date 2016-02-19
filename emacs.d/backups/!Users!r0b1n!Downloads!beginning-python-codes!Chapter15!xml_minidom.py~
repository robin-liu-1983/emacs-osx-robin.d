#!/usr/bin/env python

from xml.dom.minidom import parse
import xml.dom.minidom
def printLibrary(library):
  books = myLibrary.getElementsByTagName("book")
  for book in books:
    print("*****Book*****")
    print("Title: %s" % book.getElementsByTagName("title")[0].childNodes[0].data)
    for author in book.getElementsByTagName("author"):
      print("Author: %s"  % author.childNodes[0].data)
# open an XML file and parse it into a DOM
myDoc = parse('library.xml')
myLibrary = myDoc.getElementsByTagName("lib:library")[0]
#Get all the book elements in the library
books = myLibrary.getElementsByTagName("book")
#Print each book's title and author(s)
printLibrary(myLibrary)
#Insert a new book in the library
newBook = myDoc.createElement("book")
newBookTitle = myDoc.createElement("title")
titleText = myDoc.createTextNode("Beginning Python")
newBookTitle.appendChild(titleText)
newBook.appendChild(newBookTitle)
newBookAuthor = myDoc.createElement("author")
authorName = myDoc.createTextNode("Peter Norton, et al")
newBookAuthor.appendChild(authorName)
newBook.appendChild(newBookAuthor)
myLibrary.appendChild(newBook)
print("Added a new book!")
printLibrary(myLibrary)
#Remove a book from the library
#Find ellison book
for book in myLibrary.getElementsByTagName("book"):
  for author in book.getElementsByTagName("author"):
    if author.childNodes[0].data.find("Ellison") != -1:
      removedBook= myLibrary.removeChild(book)
      removedBook.unlink()
print("Removed a book.")
printLibrary(myLibrary)
#Write back to the library file
lib = open("library.xml", 'w') 
lib.write(myDoc.toprettyxml("  "))
lib.close()
