# Swift-Simple-Class-Object-Example
A basic example of Class and Objects in Swift


We have course and each course has course no, course name,, course hours per week

Suppose we have 10 courses you need to create class for the course and in the main fill the 10 courses in n array
In the course class : you need to create the init, and print course details function and a function to calculate and return the course fees as follows:
If the course hours less than 4 then the fees are 1150
If the course hours less than 7 then the fees are 2300
Otherwise the fees are 3450

Now in the main program: let the student register for courses
The student will enter the course no, or course name you can ask him/her if they want to search by name or no.
Then if the course exists show its fees. And ask the user do you want to register in this course? If yes add the course hours to total hours and course fees to total fees. And ask the user if wants to add more course, if not, stop and print out the total hours and total fees. And names of registered courses.
Note: the maximum no. of hours the student can have is 21. So, if the student toys to add more course you need to check the total hours to make sure if still can add more course or not. If the number of total hours will exceed the limit then show a message says that.

course
	course no
	course name
	course hours per week
