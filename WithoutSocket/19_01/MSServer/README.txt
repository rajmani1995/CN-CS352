===============================================================
                    MULTI SERVICE SERVER
 Author: Rajmani Arya
 CSE 3rd Year, 6th Semester, NITW
===============================================================
Problem Statment -> create a multi service server. when a new 
process is created, it creates two fifo file named as second 
command line argument, 1st command line arg is service type
In this example it is -> s1, s2 and s3

s1 -> ls (file and directory listing), 
s2 -> cal (calendar options -3, -1 etc.)
and s3 -> wc (wc operation for a given file)
each client creates two files. 
for reading -> <arg 2>r.dat
for writing -> <arg 2>w.dat
and Server creates c2s_fifo.dat

Client opens global fifo server and writes cmd <arg 1> and <arg 2>
in the fifo. Server reads global fifo and creates a new service process
from argument 1 and send client fifo prefix as argument to service.

service reads client writing fifo and excutes that and write it to
client reading fifo and this is read by client and displayed.

Compile:
gcc server.c -o server
gcc client.c -o client

gcc s1.c -o s1
gcc s2.c -o s2
gcc s3.c -o s3

RUN:( execute each command in a new terminal )
./server
./client s1 p1
./client s2 p2
./client s3 p3
...

For compiling and removing fifo(.dat) files
execut the shell script given exec.sh
$ ./exec.sh or sh exec.sh

NOTE:
GIVE ONLY ONE ARGUMENT IN CLIENT TO USE THE SERVICE
example:

For S1 -> ., -a, -l, /home, /, etc
For S2 -> -1, -3 etc
For S3 -> filename

before running the program again Please REMOVE fifo files.
cmd -> rm *.dat
I think this program is not fully working.
if found any problem with it. do debug by yourself.

mail: arajmani@student.nitw.ac.in rajmani1995@gmail.com
