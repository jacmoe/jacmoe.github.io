+++
title = "Welcome to my new blog"
author = ["jacmoe"]
date = 2022-03-29T00:00:00+02:00
tags = ["hugo", "emacs", "blog"]
categories = ["announcement"]
draft = false
featured_image = "/images/hugoblog.png"
+++

![](/images/hugoblog.png)
My [old blog](https://jacmoes.wordpress.com/) at WordPress only has one single post in it.

I wrote it using Org-mode in Emacs, and used an extension to put it on WordPress.

That was good.

I had to perform a lot of tweaking to the HTML, however, and that has obviously put me off just writing blog posts.

That was bad.

So, I wanted something as easy as writing a blog post in my favorite writing environment, committing the changes to git source control, and pushing it to a remote repository to be hosted. I don't want to deal with a website like WordPress, to be honest.


## Hugo and Emacs {#hugo-and-emacs}

After hunting around, I stumbled over a good workflow using [Hugo ](https://gohugo.io/) and the excellent Emacs extension `ox-hugo`.
All I have to do is write my blog posts in one org-file within Emacs, export to Hugo using the exporter, and let Hugo generate the output. Then I commit the changes to my git repository, push it to GitHub, and my homepage is updated.

I don't have to mess around with anything, like I did in WordPress.

Since it's now going to be much easier to get a blog post up, I am sure I will actually blog a post or two now :)

I have several ideas, and the good thing about it is, that I can have those posts in my org-file, as sub-trees, because the [Emacs Hugo exporter](https://ox-hugo.scripter.co/) will only export the trees that are `DONE`, not the ones marked with `TODO`.

It should be easy to blog, and I am most comfortable in Emacs. So, there's that :)
