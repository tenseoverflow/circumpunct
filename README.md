# circumpunct
A webring of creative individuals who put God first

## Join
- Add a circle with a dot anywhere on your homepage / links page
- link it to the [webring](https://circumpunct.xyz)
- Here is one way you could do it
```
<a href="https://circumpunct.xyz" ><img src="https://circumpunct.xyz/logo.png" width="24" alt="">Webring</a>
```
- Or you could use the html escape sequence &amp;#8857; or even the svgs
- You can create your own as long as its a circle with a centered dot

## Pull requests
- Once you finish this, please submit a pull request by forking the repo
- Either add a link to your website and/or your rss feed in index.html following manually OR
- Use the script atr (Add to Ring)
    ```
    sudo chmod +x atr
    ./atr <domain name> [rss feed file]
    ```
    * You can also run it with no arguments
    * Don't include https:// or a trailing slash
    * The rss file should be relative to your webroot
### Example
- If your website is www.mywebsite.com and your rss file called rss.xml is in the root of your web directory, you'd type
    ```
    ./atr mywebsite.com rss.xml
    ```

- Please include a description of where the logo is on your website on your pull request
- If you don't add a description, your pr will be closed

## Criterion
- Anyone who is creative and puts God first will be added
- Have your own domain name, no *github.io* subdomains

### Help
- Anyone in the ring can be a collaborator of this repo

