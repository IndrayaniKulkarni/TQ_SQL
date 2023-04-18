# 17Apr. 2023

# string - squence of characters

#concat
SELECT CONCAT("John"," " ,"Wick");

#index of given character in the string
SELECT instr("ASCII","S");

#substring (startIndex,length)
SELECT substr("Programming",3,5);
SELECT substr("Programming",-3,5);

# length
SELECT length("Java")
FROM DUAL;

#ASCII
SELECT ASCII('a');

# combining methods
SELECT LENGTH(CONCAT("good","morning"));

# Upper and lower
SELECT UPPER("java");
SELECT lower("JAVA");

#repeat string
SELECT REPEAT ("hello",5);

# reverse string
SELECT REVERSE("hello");

# replace 
SELECT REPLACE("Java",'a','b');