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

<div class="ox-hugo-toc toc">

<div class="heading">Table of Contents</div>

- [Introduction](#introduction)
- [Emacs](#emacs)
    - [Doom-Emacs](#doom-emacs)
- [Org-mode](#org-mode)
    - [Standard markup](#standard-markup)
    - [Headings (structure)](#headings--structure)
    - [Lists](#lists)
    - [Document options](#document-options)
    - [Miscellaneous](#miscellaneous)
    - [Special blocks](#special-blocks)
- [Boon](#boon)
- [Dictionaries et cetera](#dictionaries-et-cetera)
    - [Dictionary server](#dictionary-server)
    - [Webster](#webster)
    - [Powerthesaurus](#powerthesaurus)
    - [Proselint](#proselint)
    - [Writegood-mode](#writegood-mode)
    - [Typopunct](#typopunct)
    - [Special characters](#special-characters)
- [Tracking progress](#tracking-progress)
    - [Track-table](#track-table)
    - [Clocking time](#clocking-time)
    - [Org-habit streak count](#org-habit-streak-count)
    - [Words per heading](#words-per-heading)
    - [Column view](#column-view)
- [Organize the writing](#organize-the-writing)
    - [Master document](#master-document)
- [Capturing thoughts](#capturing-thoughts)
- [Saving the work](#saving-the-work)
    - [Magit](#magit)
    - [Unsaved changes](#unsaved-changes)
- [Exporting](#exporting)
    - [HTML to E-book](#html-to-e-book)
    - [PDF via LaTeX](#pdf-via-latex)
    - [Open Document Format](#open-document-format)
- [Looking good and being comfortable](#looking-good-and-being-comfortable)
    - [Themes and fonts](#themes-and-fonts)
    - [Zen-mode and transparency](#zen-mode-and-transparency)
    - [Scroll-center-cursor-mode](#scroll-center-cursor-mode)
- [Org-roam](#org-roam)
    - [Org-roam UI](#org-roam-ui)
- [Other things](#other-things)
    - [Journaling](#journaling)
    - [Blogging](#blogging)
    - [Bibliography](#bibliography)
    - [Snippets](#snippets)
    - [Miscellaneous](#miscellaneous)
- [Conclusion](#conclusion)
- [Links](#links)

</div>
<!--endtoc-->


## Emacs {#emacs}

> “I use emacs, which might be thought of as a thermonuclear word processor... the engineer-hours that, in the case of Microsoft Word, were devoted to features like mail merge, and the ability to embed feature-length motion pictures in corporate memoranda, were, in the case of emacs, focused with maniacal intensity on the deceptively simple-seeming problem of editing text. If you are a professional writer... emacs outshines all other editing software in approximately the same way that the noonday sun does the stars. It is not just bigger and brighter; it simply makes everything else vanish.”

_-Neal Stephenson, 1998 ([In the Beginning... Was the Command Line - Wikipedia](https://en.wikipedia.org/wiki/In_the_Beginning..._Was_the_Command_Line))_

I can make Emacs fit my workflow rather than the other way around.

Emacs is a LISP machine.


### Doom-Emacs {#doom-emacs}

[Doom-Emacs](https://github.com/hlissner/doom-emacs) is a minimalist modern Emacs distribution that is light and fast.


## Org-mode {#org-mode}

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

`M-<left>` and `M-<right>` will demote/promote a heading.


### Lists {#lists}

A list item is a dash (-) followed by a space and some text.

-   `- list item` unnumbered list item
-   `1 list item` numbered list item ()
-   `- [ ] list item` list item with unchecked check box
-   `- [X] list item` list item with checked check box

Press `C-<Enter>` to insert a new list item at the same level as the heading you’re in.

`M-<up>` and `M-<down>` will move a list item up and down.

`M-<left>` and `M-<right>` will demote/promote a list item.


### Document options {#document-options}


#### TOC {#toc}

`#+OPTIONS: toc:nil` turns off the insertion of an auto-generated Table Of Contents (TOC) upon export.
You can then use `#+toc: headlines 2` to manually insert a table of contents into the document.


### Miscellaneous {#miscellaneous}

-   `[[link][description]]` link with description (use `c l` to insert)
-   `[[file:link_to_file]]` inline image is a file link **without** description
-   `# comment` anything after a hash sign and a space will not be exported


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


## Boon {#boon}

{{< figure src="/images/hotel-california/keyboard-layout.png" alt="The Hotel California layout" title="The Hotel California layout" width="100%" >}}


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

<div title="Inserting a citation in Emacs">

<img src="/images/hotel-california/citation-insert.png" alt="Inserting a citation in Emacs" title="Inserting a citation in Emacs" width="100%" />
It will be rendered as `[cite:@citation]` in the org-file, but will be rendered correctly after export.

</div>


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
