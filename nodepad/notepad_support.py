#! /usr/bin/env python
#
# Support module generated by PAGE version 4.10
# In conjunction with Tcl version 8.6
#    Jan 29, 2018 03:25:00 PM


import sys
import sqlite3

try:
    from Tkinter import *
except ImportError:
    from tkinter import *

try:
    import ttk
    py3 = 0
except ImportError:
    import tkinter.ttk as ttk
    py3 = 1

# connect with database 'data.db'
connection = sqlite3.connect("data.db")

# creates a cursor (pointer) to the data base
cursor = connection.cursor()

search = False

results = []

index = 0

def delete_button(p1):
    global index
    global results
    global cursor

    # fetch id of the current note
    id = results[index][0]

    sql_command = """ DELETE FROM notes WHERE id = {0}; """
    sql_command = sql_command.format(id)

    cursor.execute(sql_command)

    connection.commit()


def create_button(p1):
    """
        for creating a new database
    """
    global cursor

    sql_command = """
    CREATE TABLE notes ( 
    id INTEGER PRIMARY KEY, 
    title TEXT, 
    note TEXT);"""

    try:
        cursor.execute(sql_command)
        w.errorOutput.configure(text="")
    except:
        w.errorOutput.configure(text="The database already exists")

def add_button(p1):
    # for manipulating the data base
    global cursor
    global connection
    if (len(w.inputTitle.get()) > 0 and len(w.inputNotice.get(1.0,END)) > 0):
        w.errorOutput.configure(text="")
        title = w.inputTitle.get()
        note = w.inputNotice.get(1.0,END)
        sql_command = """INSERT INTO notes (title,note) VALUES ("{0}","{1}"); """
        sql_command = sql_command.format(title,note)
        cursor.execute(sql_command)
        connection.commit()
    else:
        w.errorOutput.configure(text="Please fill the fields. ")

def back_button(p1):
    global search
    global results
    global index
    
    w.errorOutput.configure(text="")
    index -= 1
    if (index >= 0 and index < len(results)):
        w.outputNotice.delete(1.0,END)
        w.outputNotice.insert(1.0,results[index][2])
            
    

def clear_button(p1):
    """
        This function is for the clear button.
        This will clear the notice-input field
    """
    w.inputNotice.delete(1.0, END)

def exit_button(p1):
    """
        function for the exit button.
        this will exit the application.
    """
    sys.exit(0)

def search_button(p1):
    global cursor
    global results
    global index
    w.errorOutput.configure(text="")
    sql_command = """ SELECT * FROM notes WHERE title LIKE "%{0}%";"""
    sql_command = sql_command.format(w.inputSearchTitle.get())
    try:
        cursor.execute(sql_command)
        results = cursor.fetchall()
        w.errorOutput.configure(text=str(len(results)) + " results")
        index = 0
        if (index >= 0 and index < len(results)):
            w.outputNotice.delete(1.0,END)
            w.outputNotice.insert(1.0,results[index][2])
    except:
        w.errorOutput.configure(text ="Please create at first a database.")
        


def next_button(p1):
    global results
    global index
    index += 1
    if (len(w.inputSearchTitle.get()) > 0):
        if (index >= 0 and index < len(results)):
            w.outputNotice.delete(1.0,END)
            w.outputNotice.insert(1.0,results[index][2])
            
    else:
        w.errorOutput.configure(text="Please fill the search field. ")

def init(top, gui, *args, **kwargs):
    global w, top_level, root
    w = gui
    top_level = top
    root = top

def destroy_window():
    # Function which closes the window.
    global top_level
    top_level.destroy()
    top_level = None

if __name__ == '__main__':
    import notepad
    notepad.vp_start_gui()


