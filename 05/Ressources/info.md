# 05_Dont_Trust_Redirections

Unsecure social media redirection setted in the frontend.
http://192.168.99.100 (Basicaly any footer)

## How to see it

Go on the page mentionned before.
Inspect element and then go to the select and modify the footer by adding any link you want after the redirection section in the footer, select this option,
flag appeared!

```bash
The flag is : d19b4823e0d5600ceed56d5e896ef328d7a2b9e7ac7e80f4fcdb9b10bcb3e7ff
```

## How to abuse of it

Robots.txt is a pretty old convention. This file is public and someone with bad intention could use to get your root passwd if you put it in :( .

## How to patch it

You might want to protect this folder.
