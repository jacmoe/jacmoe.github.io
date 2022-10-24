+++
title = "Emacs - my Hotel California of creative writing"
author = ["Jacob Moena"]
tags = ["emacs", "org-mode", "writing"]
categories = ["post"]
draft = true
+++

## Introduction {#introduction}

{{< figure src="/images/hotel-california/hotel-california.png" alt="Emacs - my Hotel California" title="Emacs - my Hotel California" width="100%" >}}

This blog post is a detailed explanation of why Emacs is my Hotel California of creative writing. It shows how I have created a writing environment exactly how I want it to be, and why there—in my mind—is nothing out there that compares to it.

<br/>

Perhaps when you think of Emacs, you think of it as a text editor and an Integrated Development Environment (IDE).

<br/>

It is my hope that, after reading this article, that  you start thinking of it as an Integrated Writing Environment (IWE) as well.

<br/>

<div id="contents" style="position:fixed;width: 200px;right:0;top:0">

<div class="ox-hugo-toc toc">

<div class="heading">Table of Contents</div>

- [Introduction](#introduction)
- [Emacs](#emacs)
- [Org-mode](#org-mode)
- [Boon](#boon)
- [Dictionaries et cetera](#dictionaries-et-cetera)
- [Tracking progress](#tracking-progress)
- [Organize the writing](#organize-the-writing)
- [Capturing thoughts](#capturing-thoughts)
- [Saving the work](#saving-the-work)
- [Exporting](#exporting)
- [Looking good and being comfortable](#looking-good-and-being-comfortable)
- [Org-roam](#org-roam)
- [Other things](#other-things)
- [Conclusion](#conclusion)
- [Links](#links)

</div>
<!--endtoc-->

</div>


## Emacs {#emacs}

> “I use emacs, which might be thought of as a thermonuclear word processor... the engineer-hours that, in the case of Microsoft Word, were devoted to features like mail merge, and the ability to embed feature-length motion pictures in corporate memoranda, were, in the case of emacs, focused with maniacal intensity on the deceptively simple-seeming problem of editing text. If you are a professional writer... emacs outshines all other editing software in approximately the same way that the noonday sun does the stars. It is not just bigger and brighter; it simply makes everything else vanish.”

_-Neal Stephenson, 1998 ([In the Beginning... Was the Command Line - Wikipedia](https://en.wikipedia.org/wiki/In_the_Beginning..._Was_the_Command_Line))_

I can make Emacs fit my workflow rather than the other way around.

Emacs is a LISP machine.


### Emacs basics {#emacs-basics}

{{< youtube id="RuiBsWQeeTs" title="Emacs: Basic Movement and Editing" >}}

It’s highly recommended to run Emacs without any customization a couple of times to learn how the basic Emacs commands work. We can do that by running Emacs with the `Q` command-line argument, like this: `emacs -Q`. If you want—again, highly recommended—you can run the Emacs Tutorial by running `C-h t`. Do the tutorial until you feel confident. Also, experiment in the Scratch buffer, like in the video tutorial above.

<br/>

Common Emacs commands:

-   `C-x C-f` : `find-file`, allows you to open an existing file. If the file doesn’t exist, create a new file.
-   `C-x C-s` : `save-buffer`, saves buffer to disk.
-   `C-x b` : `ibuffer`, show a list of buffers in the minibuffer, and allows you to switch to a different buffer.
-   `C-x C-b` : `ibuffer`, runs ibuffer in a new window (use `q` to quit).
-   `C-x k` : kill (close) buffer.
-   `C-x C-c` : quit Emacs.
-   `C-o` : `org-open-line` : inserts new line below point.
-   `C-x 2` : split window in two, one below another.
-   `C-x 3` : split window in two, side-by-side windows.
-   `C-x o` : switch to other window.
-   `C-x 0` : close window.
-   `C-x 1` : close other windows.
-   `C-<space>` : toggle the mark.
-   `C-w` : kill (cut) text between point and mark. _(‘w’ is for “wipe”)_.
-   `M-w` : (copy) save region, but don’t kill it. _(‘w’ is for “wipe”)_
-   `C-y` : yank (paste) first item from the kill-ring.
-   `M-y` : display items in the kill-ring to yank (paste) into the buffer.

<br/>

To get out of trouble, use `C-g` (keyboard quit) to cancel whatever it is that Emacs is doing at the moment. Use `C-x C-c` to rage-quit if you need to (I admit that I have when I first started out). `C-x u` will undo, and `C-?` will redo. Use `C-x C-s` to save current buffer. If the current buffer is a horrible mess, you can run `M-x revert-buffer` to get back to whatever it was when you loaded it from disk (by doing a `C-x C-f`). Also, sometimes you will want to toggle a file read-only. You can do that by pressing `x C-q`.

<br/>

Press `C-h` to view a list of options to get help. Especially useful is `C-h k` when you want to know what a keyboard command does without running it first. For example, pressing `C-h k <F4>` will tell you that it runs the command `kmacro-end-or-call-macro`. Press `q` to close the help window.

<br/>

If you want to read a comprehensive—very much so—guide to Emacs, the history, and the details of how it works, read my massive [Creative writing with Emacs](https://jacmoes.wordpress.com/2019/09/24/creative-writing-with-emacs/) blog post from 2019. It delves into the mechanics of Emacs in much more depth, leaving us free to explore Emacs as a writer’s toolbox. So, if you are completely blank with regard to Emacs, I highly recommend that you read at least the first part of it before continuing.

<br/>

And, before you ask, let me tell you my favorite Emacs command: `C-o` (_insert new line below_); I use it all the time!

<br/>

Now that you know a thing or two about Emacs, here’s another introductory video about Emacs as a text editor:

{{< youtube id="jPkIaqSh3cA" title="The Basics of Emacs as a Text Editor" >}}

_NB: He uses the `<Esc>` key as an alternative to `<Control>` like in `<Esc> y`. May I suggest that you use `C-y` instead. Using the Escape key that way will conflict with the modal editing package Boon mentioned below._

<br/>


### Doom-Emacs {#doom-emacs}

[Doom-Emacs](https://github.com/hlissner/doom-emacs) is a minimalist modern Emacs distribution that is light and fast. It provides a rock-solid and highly configurable infrastructure to base an Emacs configuration on.

<br/>

I switched to Doom-Emacs after declaring Emacs Bankruptcy&nbsp;[^fn:1], and I haven’t regretted it. It uses every trick in the book to optimize, and the install/upgrade/maintenance scripts are excellent.


## Org-mode {#org-mode}

{{< figure src="/images/hotel-california/org-mode-unicorn.svg" alt="Org-mode" title="Org-mode" width="20%" >}}

> A GNU Emacs major mode for keeping notes, authoring documents, computational notebooks, literate programming, maintaining to-do lists, planning projects, and more — in a fast and effective plain text system.

<br/>

[Org-mode](https://orgmode.org/) is based on outline-mode which is again based on text-mode, and is both a markup language, an organizer (GTD), and an out-liner, and there are some people who live their entire lives in Org-mode.

<br/>

Here’s a small demo of Org-mode in action (_may I suggest that you turn off the sound for this one_):

{{< youtube id="hnMntOQjs7Q" title="Emacs Org Mode Demo 2021" >}}

Here is a nerdy blog post about why Org-mode is a great markup language: [Org Mode Syntax Is One of the Most Reasonable Markup Languages to Use for Text](https://karl-voit.at/2017/09/23/orgmode-as-markup-only/)

-   Official format
-   Out-liner
-   Organizer
-   Extendable
-   One hundred percent pure text


### Standard markup {#standard-markup}

-   `*bold*` **bold**
-   `/italic/` _italic_
-   `_underline_` <span class="underline">underline</span>
-   `~code~`  `code`
-   `=monospaced=` `monospaced`
-   `# comment` anything after a hash sign and a space will not be exported


### Headings (structure) {#headings--structure}

A heading is one or more asterisks followed by a space and some text.

-   `* heading` level 1 heading
-   `** heading` level 2 heading
-   `*** heading` level 3 heading, and so on
-   `* todo heading` a heading with a todo
-   `* heading :tag:` heading with a tag
-   `* heading :tag1:tag2:` heading with two tags
-   `* heading :@category:` heading with a category

Press `C-<Enter>` to insert a new heading at the same level as the heading you’re in.

`M-<up>` and `M-<down>` will move a heading up and down.

`M-<left>` and `M-<right>` will promote/demote a heading.

`c n` and `c p` will navigate to next and previous heading, respectively.

`c u` navigates up to the parent heading, if any.

`S-<right>` and `S-<left>` cycles through todo states for a heading, ie from _draft_ to _revise_ to _done_.

`c q` can be used to set tags/categories for a heading. (`c c` also works, when standing on the actual heading)


### Lists {#lists}

A list item is a dash (-) followed by a space and some text.

-   `- list item` unnumbered list item
-   `1 list item` numbered list item ()
-   `- [ ] list item` list item with unchecked check box
-   `- [X] list item` list item with checked check box

Press `C-<Enter>` to insert a new list item at the same level as the heading you’re in.

`M-<up>` and `M-<down>` will move a list item up and down.

`M-<left>` and `M-<right>` will demote/promote a list item.

`S-<left>` and `S-<right>` will cycle through different list styles, provided that the point is placed on the list item symbol (by default a `-`))


### Document options {#document-options}


#### TOC {#toc}

`#+OPTIONS: toc:nil` turns off the insertion of an auto-generated Table Of Contents (TOC) upon export.
You can then use `#+toc: headlines 2` to manually insert a table of contents into the document.


### Links {#links}

-   `[[link][description]]` link with description (use `c l` to insert)
-   `[[file:link_to_file]]` inline image is a file link **without** description

Use `c l` to insert a link, or to edit a link. Use `c o` to open a link.

If the link is a file link to an image, and without a description, it is an inline image. To toggle the rendering of inline images, you can press `c <TAB>`.


### Special blocks {#special-blocks}

In addition to the standard markup, Org-mode has special blocks. Use `C-c C-,` to insert a block.

<div title="Special blocks">

<img src="/images/hotel-california/orgmode-blocks.png" alt="Special blocks" title="Special blocks" width="100%" />
For example, choosing “comment” as a block type will result in the following being inserted in the document:

</div>

```nil
#+begin_comment
#+end_comment
```

The “verse” block is useful for when you want to have a piece of poetry and not have Emacs mess with the formatting.

Special blocks is a good way to extend the markup, and—of course—you can define your own special blocks.


### Noexport tags {#noexport-tags}

The `:noexport:` tag tells Org-mode that the contents—including any children—of a section is not to be exported. Useful for when you keep your work in one single file, including sections for things like research, notes, and character studies.


### Ignore tags {#ignore-tags}

The `:ignore:` tag instructs Org-mode to export the contents of a heading section, but not the heading itself. That’s useful when we organize your outline/document in chapters and scenes, but don’t want the exported text to be partitioned with scene headings. Having the text partitioned using headings allows us to rearrange those sections of the document—promoting, demoting, moving up and down—and we wouldn’t be able to do that if the text was not organized in an outline. Or, put another way: the `:ignore:` tag allows us to keep the outline to ourselves.


### Tables {#tables}

In Org-mode tables are made of ASCII characters, but it feels like magic in action.

{{< youtube id="5vGGgfs0q3k" title="Using Emacs episode 54 - Org Tables" >}}

See [Tables (The Org Manual)](https://orgmode.org/manual/Tables.html) for more details.

We’ll see more of what Org-mode tables can do later on in this article, when discussing clock-tables and when discussing Org-tracktable.


## Boon {#boon}

[Boon](https://github.com/jyp/boon) is a modal editing package for Emacs which is ergonomic and designed to integrate well with existing Emacs infrastructure. That means that we can continue to use the standard Emacs keyboard shortcuts should we choose to do so, in addition to the features that Boon provides.

<br/>

Boon is designed so that the right hand takes care of movement, and the left hand do the actions. And great care is taken to ensure that the fingers never leave the home row. Important for touch typists!

<br/>

Boon is a modal editing system with two modes: Command mode and Insert mode. Command mode is the default mode, and where we perform movement and commands. Insert mode is the mode where the keyboard acts like we’re used to: inserting letters as we type them (as opposed to perform commands).

<br/>

When in Command mode, we can switch to Insert mode by pressing `v`. The cursor changes shape and color to indicate that we are indeed in Insert mode. For convenience, pressing `S-v` will insert a line above the current line and place the cursor in it, and `C-v` will insert a line below. That often saves us from a couple of keystrokes.

<br/>

In Insert mode, we can exit it by pressing `<Esc>` or `C-;`. The cursor changes back to normal shape and color to indicate that pressing keys will no longer insert letters but perform commands. I’ve bound `boon-quit` to `C-;` because `<Esc>` is **not** on the home row, even if we rebind it to `<Caps Lock>`, a fairly common thing to do. The combination of `v` and `C-;` means that we don’t have to move our fingers at all, even when switching between the two modes at speed. Ergonomics is important.

<br/>

`C-x` and `C-c` shortcuts are handled in Boon so that any command starting with `C-x` is simply `x`, and `C-c C-`  shortcuts are just `c`.

<br/>

Not all commands work as you would expect, however, so if we wanted to run `find-file` (`C-x C-f`) we will have to press `x C-f`, and not `x f` (`set-fill-column`). That’s because `set-fill-column` normally uses the shortcut `C-x f`, and there is no way to make a distinction between the two, `find-file` or `set-fill-column`. Luckily, there aren’t many exceptions like this.

<br/>

Here’s how the keyboard layout looks like for Command mode using Boon:

{{< figure src="/images/hotel-california/keyboard-layout.png" alt="The Hotel California layout" title="The Hotel California layout" width="100%" >}}

-   Blue is Boon commands
-   Green is movement commands
-   Yellow is edit commands
-   Purple is custom commands

We already covered the Boon commands in blue, so the following will not cover those.


### Movement {#movement}


### Editing {#editing}

-   \` : cycles between uppercase, title-case, and lowercase
-   q : “quote”, insert a literal character
-   r : “replace”, replaces a region, ie deletes and enters Insert mode
-   t : “transform”, use to change the character at point
-   y : “yank”, yank from the kill-ring (paste)
-   d : “delete”, delete region (cut to kill-ring)
-   D : “duplicate”, copies region to kill-ring


### Custom {#custom}

-   w : show how many words have been written today (`org-tracktable-status`)
-   W : write to the track-table (`org-tracktable-write`)
-   E : go to last edit
-   s : toggle center-cursor-mode
-   G : grab an URL from a running web browser and inserts it
-   Z : toggle transparency (zee-through)
-   B : begin a Pomodoro session
-   n : narrow to Org-mode heading
-   N : widen the view (un-narrow)


## Dictionaries et cetera {#dictionaries-et-cetera}


### Dictionary server {#dictionary-server}


### Webster {#webster}


### Powerthesaurus {#powerthesaurus}


### Proselint {#proselint}

{{< figure src="/images/hotel-california/proselint.png" alt="Proselint has checked the text and is not satisfied" title="Proselint has checked the text and is not satisfied" width="100%" >}}


### Writegood-mode {#writegood-mode}

`Writegood-mode` is a minor mode that will highlight weasel words and passive voice.

<div title="Writegood-mode">

<img src="/images/hotel-california/writegood-mode.png" alt="Writegood-mode" title="Writegood-mode" width="100%" />
The weasel words are highlighted in orange, passive voice in cyan.

</div>

Additional weasel words can be added to writegood-mode by editing the `my/weasel-words` list in `config.el` in the Doom user directory.


### Typopunct {#typopunct}

`Typopunct` is a package that enables us to simply write regular ASCII single and double quotes and have them automatically be converted into typographical quotes.

For example, typing `'quoted'` will result in ‘quoted’, and `"double-quoted"` will result in “double-quoted”.

If we want to actually write a regular ASCII single or double quote, we need to use `quoted-insert`, which is bound to `C-q`, like this: `C-q "` to insert an ASCII `"`.

_Note: some exporters, like the Hugo exporter, will automatically convert regular ASCII quotes to typographical quotes, unless you wrap them in code tags (~)_.

Additionally, `typopunct` also allows us to insert `en-dash` and `em-dash` by typing  `--` for – and `---` for —.


### Special characters {#special-characters}


## Tracking progress {#tracking-progress}


### Track-table {#track-table}


### Clocking time {#clocking-time}

`c x i` to clock in. `c x o` to clock out. `c x q` to cancel a clock.
There is also the option of starting a 20 minute Pomodoro session, by pressing `B`.
Clocking is tied to the heading you are working under, and will add a `:LOGBOOK:` section to it, like this:

```nil
:LOGBOOK:
CLOCK: [2017-04-10 Mon 15:18]
CLOCK: [2017-04-10 Mon 15:16]--[2017-04-10 Mon 15:17] =>  0:01
CLOCK: [2017-04-07 Fri 16:05]--[2017-04-07 Fri 16:35] =>  0:30
CLOCK: [2017-04-05 Wed 16:42]--[2017-04-05 Wed 16:52] =>  0:10
:END:
```

We can generate clock report table by executing `C-c l c R` or `M-x org-clock-report`.
The following will be inserted at point, depending on the logbooks in the current document:

```nil
#+BEGIN: clocktable :scope subtree :maxlevel 2
#+CAPTION: Clock summary at [2022-10-23 søn 09:56]
| Headline   | Time |
|------------+------|
| *Total time* | *0:41* |
|------------+------|
#+END:
```

A clocktable can be configured, for example, to show time clocked until now, like this:

```nil
#+BEGIN: clocktable :maxlevel 3 :scope file :block untilnow
```

<div title="Time clocked in total">

<img src="/images/hotel-california/clocktable-master.png" alt="Time clocked in total" title="Time clocked in total" width="100%" />
Time clocked today:

</div>

```nil
#+BEGIN: clocktable :maxlevel 3 :scope file :block today
```

Time clocked yesterday:

```nil
#+BEGIN: clocktable :maxlevel 3 :scope file :block yesterday
```

To update a clocktable, simply place the point somewhere in the `BEGIN` line, and press `c c`.

For more on clocking time, see [Clocking time with Org-mode](https://writequit.org/denver-emacs/presentations/2017-04-11-time-clocking-with-org.html).

Often when writing, our progress can’t always be measured in words, so time spent is a good alternative.


### Org-habit streak count {#org-habit-streak-count}


### Words per heading {#words-per-heading}

Using `org-wc`.

{{< figure src="/images/hotel-california/org-wc.png" alt="Running M-x org-wc-display shows word count per heading" title="Running M-x org-wc-display shows word count per heading" width="100%" >}}


### Column view {#column-view}

Column view is a good way to view properties of headers. While we can view todo status, categories, tags, time logged, and other standard properties, we can add our own, custom properties, and this is where it gets real interesting for creative writers.
We can easily add properties to a heading by running `C-c C-x p`:

{{< figure src="/images/hotel-california/properties-actions.png" alt="Adding properties to a heading" title="Adding properties to a heading" width="100%" >}}

Now we can configure the `COLUMNS` special property, which will be inherited by child headings:

{{< figure src="/images/hotel-california/columns-source.png" alt="Setting up columns with properties" title="Setting up columns with properties" width="100%" >}}

See [Org column view tutorial](https://orgmode.org/worg/org-tutorials/org-column-view-tutorial.html) for details.

Having set it all up, we can now run `org-columns` by pressing `c x c`:

{{< figure src="/images/hotel-california/columns.png" alt="Column view" title="Column view" width="100%" >}}

Pres `q` to exit.


## Organize the writing {#organize-the-writing}


### Master document {#master-document}


## Capturing thoughts {#capturing-thoughts}


## Saving the work {#saving-the-work}


### Magit {#magit}


### Unsaved changes {#unsaved-changes}

Sometimes you want to know what changes you have made to a buffer since your last save. Since you haven’t saved the file yet, Magit can’t help you, so you need something else. Fortunately, we can use Emacs’ `diff-buffer-with-file`, mapped to `C-d`.

{{< figure src="/images/hotel-california/diff.png" alt="Using diff to see the difference between buffer and file" title="Using diff to see the difference between buffer and file" width="100%" >}}

Emacs will ask you for the file on disk, and then open a diff buffer where you can examine the differences. Use `x o` (o for ‘other’) to go to the diff buffer, if you’re not already in it. Using movement commands, like `i o k l`, etc. And then, when done, close the buffer by pressing `x 0` (zero), or `x 1` if you’re not in the diff buffer.


## Exporting {#exporting}


### HTML to E-book {#html-to-e-book}


### PDF via LaTeX {#pdf-via-latex}


### Open Document Format {#open-document-format}


## Looking good and being comfortable {#looking-good-and-being-comfortable}


### Themes and fonts {#themes-and-fonts}


### Zen-mode and transparency {#zen-mode-and-transparency}

{{< figure src="/images/hotel-california/zen-mode.png" alt="Zen-mode with transparency turned on" title="Zen-mode with transparency turned on" width="100%" >}}


### Scroll-center-cursor-mode {#scroll-center-cursor-mode}


## Org-roam {#org-roam}


### Org-roam UI {#org-roam-ui}


## Other things {#other-things}


### Journaling {#journaling}


### Blogging {#blogging}


### Bibliography {#bibliography}


#### Zotero {#zotero}

[Zotero](https://www.zotero.org/) is used to gather and store and export the citations/references, by the use of the `Better-Bibtex` plugin.

<div title="Zotero">

<img src="/images/hotel-california/zotero.png" alt="Zotero" title="Zotero" width="100%" />
After installing Zotero itself, the plugin can be installed by following this guide: <https://retorque.re/zotero-better-bibtex/installation/>. When downloading using Firefox, I had to right-click and “save as” because otherwise Firefox thought I was trying to install a Firefox add-on due to the file-extension being the same.

</div>

<div title="BetterBibtex installed">

<img src="/images/hotel-california/zotero-plugins.png" alt="BetterBibtex installed" title="BetterBibtex installed" width="100%" />
When the plugin has been successfully installed, it can be set up to automatically export and keep updated the LaTeX formatted Bibtex file that we need in order to use it from Emacs.

</div>

<div title="Zotero export settings">

<img src="/images/hotel-california/zotero-export-settings.png" alt="Zotero export settings" title="Zotero export settings" width="100%" />
Choose “file - Export Library”, and choose the `Better BibLaTeX` as the format, and make sure to check the “keep updated” box. When you click “OK” you will be asked where to save the export. For my configuration, I have it as `~/Dropbox/skriv/jacmoe.bib`.

</div>

To actually populate the bibliography library, I am using the Zotero Firefox connector plugin. I can press a button in Firefox whenever I am visiting a resource.


#### Emacs {#emacs}

After all the work with Zotero, we are now ready to use the bibliography from within Emacs.
In the file where we want to insert citations, we configure the bibliography file to be used, and configure the export of the citations to use the CSL format:

```nil
#+bibliography: ~/Dropbox/skriv/jacmoe.bib
#+cite_export: csl
```

Then, we set a placeholder for where the generated bibliography list will be rendered in the document:

```nil
#+print_bibliography:
```

Now that we’re all set up, we can now insert citations into our document by running `org-cite-insert` (bound to `C-c l @`)

{{< figure src="/images/hotel-california/citation-insert.png" alt="Inserting a citation in Emacs" title="Inserting a citation in Emacs" width="100%" >}}

{{< figure src="/images/hotel-california/bibliography-source.png" alt="Bibliography source code" title="Biblography source code" width="100%" >}}

{{< figure src="/images/hotel-california/bibliography-test.png" alt="Bibliography test rendering" title="Bibliography test rendering" width="100%" >}}


### Snippets {#snippets}


### Miscellaneous {#miscellaneous}


#### Grabbing links from the web browser {#grabbing-links-from-the-web-browser}

By running `M-x grab-x-link` we can insert a link from an active web browser window.
It will ask you to choose your browser—Chromium, Chrome, Firefox, or Brave—and what format to use (plain, markdown or Org format). Much quicker than manually copying, pasting, and write the title manually. The links can be edited by `c l` , and opened by `c o`.


## Conclusion {#conclusion}

Write the conclusion here


## Links {#links}

[Getting Started With Org Mode - YouTube](https://www.youtube.com/watch?v=SzA2YODtgK4)

[OrgMode E05S05: Tables - YouTube](https://www.youtube.com/watch?v=JHKrTsiz4JU)

[EmacsConf - 2020 - talks - Idea to Novel Superstructure: Emacs for Writing](https://emacsconf.org/2020/talks/03/)

[Emacs Editor Tutorial - An Absolute Beginners Reference - LinuxForDevices](https://www.linuxfordevices.com/tutorials/linux/emacs-editor-tutorial)

[GNU Emacs - Guided Tour - GNU Project](https://www.gnu.org/software/emacs/tour/)

[yjwen/org-reveal: Exports Org-mode contents to Reveal.js HTML presentation.](https://github.com/yjwen/org-reveal/)

[^fn:1]: When your InitFile gets so large that you really need to start over, then you have declared “.emacs bankruptcy”.