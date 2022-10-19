+++
title = "Emacs - my Hotel California of creative writing"
author = ["Jacob Moena"]
date = 2022-10-19T18:32:00+02:00
tags = ["emacs", "org-mode", "writing"]
categories = ["post"]
draft = false
+++

## Introduction {#introduction}

{{< figure src="/images/hotel-california/hotel-california.png" alt="Emacs - my Hotel California" title="Emacs - my Hotel California" width="100%" >}}

This blog post is a detailed explanation of why Emacs is my Hotel California of creative writing. It shows how I have created a writing environment exactly how I want it to be, and why there—in my mind—is nothing out there that compares to it.


## Emacs {#emacs}

I can make Emacs fit my workflow rather than the other way around.


### Doom-Emacs {#doom-emacs}

[Doom-Emacs](https://github.com/hlissner/doom-emacs) is a minimalistic modern Emacs distribution that is light and fast.


## Org-mode {#org-mode}


### Official format {#official-format}


### Outliner {#outliner}

<video alt="Org-mode is an outliner" title="Org-mode is an outliner" width="80%" controls><source src="/videos/hotel-california/outliner.mp4" type="video/mp4">
Your browser does not support the video tag.</video>


### Organizer {#organizer}


### Extendable {#extendable}


### One hundred percent pure text {#one-hundred-percent-pure-text}


## Boon {#boon}


## Dictionaries et cetera {#dictionaries-et-cetera}


### Dictionary server {#dictionary-server}


### Webster {#webster}


### Powerthesaurus {#powerthesaurus}


### Proselint {#proselint}

{{< figure src="/images/hotel-california/proselint.png" alt="Proselint has checked the text and is not satisfied" title="Proselint has checked the text and is not satisfied" width="100%" >}}


### Writegood-mode {#writegood-mode}


### Typopunct {#typopunct}


### Special characters {#special-characters}


## Tracking progress {#tracking-progress}


### Track-table {#track-table}


### Clocking time {#clocking-time}


### Org-habit streak count {#org-habit-streak-count}


### Words per heading {#words-per-heading}

Using `org-wc`.

{{< figure src="/images/hotel-california/org-wc.png" alt="Running M-x org-wc-display shows word count per heading" title="Running M-x org-wc-display shows word count per heading" width="100%" >}}


### Column view {#column-view}


## Organize the writing {#organize-the-writing}


### Master outline {#master-outline}


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


### Snippets {#snippets}


## Conclusion {#conclusion}

Write the conclusion here
