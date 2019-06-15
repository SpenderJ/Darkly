# 05_Dont_Trust_Redirections

Unsecure social media redirection setted in the frontend.
http://192.168.99.100 (Basicaly any footer)

## How to see it

Go on the page mentionned before.
Inspect element and then go to the select and modify the footer by adding any link you want after the redirection section in the footer, select this option,
flag appeared!

```bash
GOOD JOB HERE IS THE FLAG : B9E775A0291FED784A2D9680FCFAD7EDD6B8CDF87648DA647AAF4BBA288BCAB3
```

## How to abuse of it

Redirect you not to the expected website, by aspiring their frontend create a site which looks like it and which could steal all your infos that you could enter on this one feeling secured.

## How to patch it

Create the link from the backend. APIS ARE MADE TO BE USED
