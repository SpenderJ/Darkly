# 12_XSS_Injection

On the Feedback Page
http://192.168.99.100/index.php?page=feedback

## How to see it

Go on the page mentionned before.
Just write script in the name input

```bash
THE FLAG IS : 0FBB54BBF7D099713CA4BE297E1BC7DA0173D8B3C21C1811B916A3A86652724E
```

## How to abuse of it

Just by using a simple typo ("script") we can create an XSS fail.

## How to patch it

For any return formular you really want to sanitize your return
