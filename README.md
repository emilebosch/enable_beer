# enable_beer - beer enabler
``enable_beer`` aims to backup your git stale Github ``source`` repos to Dropbox so you can save money and buy beers instead.

## Prereqs

- OSX
- Dropbox installed which points to ``~/Dropbox/``
- A github account (obvs!)
- Be able to clone your private repos via SSH.

### How to use

First, start by installing this beautiful little script of hawtness.

```
$ gem install enable_beer
$ rbenv rehash
```

Then head over to github. Go to your private repo's sources and add ``#BACKUP`` in the description (Via settings)


Next up is to run ``enable_beer``, it will check for all source repo's with ``#BACKUP`` in description, clone them and tar's them, and puts them in your Dropbox folder. It will ask for your GH password to authenticate yourself, and list the repo's.

```
$ enable_beer <your-gh-username>
```

This will, clone the repo's with ``#BACKUP`` in the description, TAR's them and puts it in to your ``~/Dropbox/gh_rescued_beers/`` folder. Happy time!

 **PS. MAKE SURE TO DOUBLE CHECK IT BEFORE YOU DELETE YOUR REPOS!** **PS.PS.** This will only **COPY** to your local ``~/Dropbox/gh_rescued_beers/`` drive, you still need to make sure dropbox itself does its magic and save it in the cloud before you delete your binary poetry!

Lot's of love <3 <3 :)

Traveling railsman. - [http://traveling-railsman.com](http://traveling-railsman.com)

## Troubles

### OMG It deleted my repo

Lol, it doesnt delete only copy. Make sure u think. Before deleting your repo.

### You are an alcoholic

Yes.




