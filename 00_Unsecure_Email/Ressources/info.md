# 00_Unsecure_Email

Unsecure email adress setted in the frontend.
http://192.168.99.100/?page=recover#

## How to see it

Go on the page mentionned before.
Inspect element and then you'll find this line, which contains the email, modify it respecting the max length. Submit a request, you won:

```bash
THE FLAG IS : 1D4855F7337C0C14B6F44946872C4EB33853F40B2D54393FBE94F49F1E19BBB0
```

## How to abuse of it

We could flood / mail bomb this email adress with a script asking for some password reset. Or even change the adress and get the login of an user.

## How to patch it

Set the adress email in backend or at least make a check
