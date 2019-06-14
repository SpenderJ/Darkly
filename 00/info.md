# 00_Unsecure_Email

Unsecure email adress setted in the frontend.
http://192.168.99.100/?page=recover#

## How to see it

Go on the page mentionned before.
Inspect element and then you'll find this line, which contains the email:

```bash
<input type="hidden" name="mail" value="webmaster@borntosec.com" maxlength="15">
```

## How to abuse of it

We could flood / mail bomb this email adress with a script asking for some password reset.

## How to patch it

Just learn to code and set the email adress in backend.
