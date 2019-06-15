# 10_I_know_architecture

Unsecure file stored in the website
http://192.168.99.100

## How to see it

Go on the page mentionned before.
All the website are built by the same way and that all website running on UNIX contain a folder: /etc/passwd
So we are going to try and find it by going up in the arborescence of our website by adding "../" to the asked URL.
We will finally find:

```bash
http://192.168.99.100/?page=../../../../../../../etc/passwd
```

Which will print us:
```bash
Congratulaton!! The flag is : b12c4b2cb8094750ae121a676269aa9e2872d07c06e429d25a63196ec1c8c1d0 
```
Thanks UNIX :)
## How to abuse of it

In this file are stored all root and login from the administrator of the website

## How to patch it

Once again protect your files :(
