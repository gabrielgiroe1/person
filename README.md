# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Ruby version: 3.0.2

* How to run this app:
In terminal run this command: ruby app/people_grouping/person.rb
After that you need to give an integer input (number of people). After that you need to give the list of people.
For example, if I have this input:
```
  9
  Mihai Enescu 1980-01-02
  George Ionescu 1992-06-20
  Maria Popescu 1995-03-13
  Elena Popescu 1990-12-13
  Andrei Ionescu 1996-03-01
  Sergiu Ionescu 1990-02-01
  George Enescu 1990-10-12
  Matei Popescu 1929-03-23
  Cosmin Ionescu 1939-01-01
```

I should get this output:
```

Ionescu: Andrei George Sergiu Cosmin
Popescu: Maria Elena Matei
Enescu: George MihaiOutput
Ionescu: Cosmin Sergiu George Andrei
Popescu: Matei Elena Maria
Enescu: Mihai George
```