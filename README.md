# Circumpunct &#8857;
A webring of creative individuals who put God first

# How to Join
## Use the Logo
- Add a circle with a dot anywhere on your homepage / links page
- link it to the [webring](https://circumpunct.xyz)
- Here is one way you could do it
```
<a href="https://circumpunct.xyz" ><img src="https://circumpunct.xyz/logo.png" width="24" alt="Webring"></a>
```
- Or you could use the html escape sequence &amp;#8857; or even the svgs (in the /assets folder)
- You can create your own as long as its a circle with a centered dot and links back to the webring
### Wordpress
- For those who have wp sites, although I'd like to keep that to a minimum, you can find a tutorial on how to do this [here](https://www.competethemes.com/blog/link-image-url-wordpress/)

## Pull requests
- Once you finish this, please submit a pull request by forking the repo
- Either add a link to your website and/or your rss feed in index.html manually (following the same conventions) OR
- Use the script atr (Add to Ring)
    ```
    sudo chmod +x atr
    ./atr <domain name> [rss feed file name] [hidden service address]
    ```
    * The feed and tor links are optional
    * You can also run it with no arguments
    * Don't include https:// or a trailing slash
    * The rss file should be relative to your webroot
### Example
- If your website is www.mywebsite.com and your rss file called rss.xml is in the root of your web directory, you'd type
    ```
    ./atr mywebsite.com rss.xml
    ```

- Please include a description of where the logo is on your website in your pull request
- If you don't add a description, your pr will be closed
- Don't submit broken prs

## Criterion
- Anyone who is creative and puts God first will be added
- Have your own domain name, no *github.io* subdomains or direct sales companies
- You must own the site, or get permission from the owner

## Disclaimer
- Everyone in the ring has their own ideas. By entering you endorse the ring's goal: to increase discoverability among small website owners who put God first. However, entering is not an explicit endorsement of individuals within the ring itself.
- Being the most fundamental symbol, the ancient circumpunct has been used by all sorts of groups/cults. However, this ring has no affiliation with "free masons" or whatever spooky group you can find on wikipedia. The symbol has been tainted by these groups and really is it's own thing. It's guilt by association at most. *We openly condemn any secret society that uses this symbol.* **Yes this includes [target](https://www.target.com)**
### Help
- Anyone in the ring can be a collaborator of this repo

![logo](assets/logo.png)
