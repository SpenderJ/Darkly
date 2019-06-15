# 06_FINALLY_THE_BRUTE_FORCE

The one you've all been waiting for
http://192.168.99.100/index.php?page=signin

## How to see it

Go on the page mentionned before.
So we are going to be willing to bruteforce the website. Bruteforce is the idea to try all password possible until we found the
good one. We will use a dictionnary to make it better.

```bash
sh script.sh | grep "flag"
```
And you will have this result appearing 

```bash
<center><h2 style="margin-top:50px;">The flag is : b3a6e43ddf8b4bbb4125e5e7d23040433827759d4de1c04ea63907479a80a6b2 </h2><br/><img src="images/win.png" alt="" width=200px height=200px></center>
```

## How to abuse of it

This is probably the worst thing to hack and the last thing to do. It will work dependingly good depending on how good your dictionary is.

## How to patch it

Limit the number of request per seconds or block the user after a certain ammount of retrys
