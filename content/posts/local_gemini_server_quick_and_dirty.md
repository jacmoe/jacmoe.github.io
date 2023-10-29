+++
title = "Local Gemini Server - Quick and Dirty"
author = ["Jacob Moena"]
description = "This is a quick guide to get a local Gemini server up and running. Useful when you are authoring a Gemini capsule and want to test it before pushing it to a server accessible to the world."
date = 2023-03-14T14:22:00+01:00
tags = ["gemini"]
categories = ["post"]
draft = false
+++

If you, like me, are excited about [Project Gemini](https://gemini.circumlunar.space/) and want to create your own capsule (Gemini site), you will probably wonder how you would test your capsule on your local machine before putting it out there.

This small (and dirty!) guide aims to remove that doubt.

So, without further dillydally, here goes:

Install [GmCapsule](https://pypi.org/project/gmcapsule/) by running the following command, assuming that Python is installed:

```bash
pip install gmcapsule
```

Now, create a `.gmcapsulerc` file in your home directory, with the following content:

```bash
[static]
root = /home/moena/gemini/capsule/
```

`root` should point to where the Gemini files are to be served from.

Notice that the server name is appended to the path above, which means that the real path to the `index.gmi` file for the root of the site is located in `/home/moena/gemini/capsule/localhost`.

Now we need to create a server certificate and the corresponding key.

Create a directory called `.certs` in your home directory, cd into it, and run the following command:

```bash
openssl req -new -x509 -days 365 -nodes -out cert.pem -keyout key.pem -subj "/CN=localhost" -newkey rsa:4096 -addext "subjectAltName = DNS:localhost"
```

The `.certs` directory should now contain two files, `cert.pem` and `key.pem`. The GmCapsule server loads the certificate upon startup.

Now, start the server by running:

```bash
gmcapsuled
```

Use a Gemini client, like `amfora` to browse your local Gemini capsule:

```bash
amfora gemini://localhost/
```

Now, enjoy creating content for Gemini!

I am excited about the whole idea of the small internet, and the syntax for the `.gmi` files are so simple, much simpler than even Markdown. I like not having to mess around with HTML, CSS, JavaScript, fonts ... Just plain text.

I will probably be writing more about Gemini in the future ☺

_PS: you might have to open port 1965 if you are running a firewall._
