# 03_Unsecure_use_of_admin_cookie

Unsecure sql request form in the page:
http://192.168.99.100

## How to see it

Go on the page mentionned before.
Inspect element and find the cookie I_am_admin.
We can see his md5 value which corresponds to false.

## How to abuse of it

We are just going to look with my md5 for the value of true in md5.
```bash
true -> ft_md5 -> b326b5062b2f0e69046810717534cb09
```
Then we can refresh the browser which will create an alert and print:
```bash
Good job! Flag : df2eb4ba34ed059a1e3e89ff4dfc13445f104a1a52295214def1c4fb1693a5c3
```
And here we are now we are admin on the website

## How to patch it

Session cookie so you can't modify them or just settings the right via a database -> account.
