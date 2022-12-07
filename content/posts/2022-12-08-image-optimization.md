---
title:      Image optimization with Picture tag
date:       2022-12-06
summary:    Blog about how I deal with image optimization
categories: ["meta"]
tags: ["blog", "image", "optimization"]
---

One of my friend, struggling with images in his application asked me how I deal with images.
I thought it would be a good idea to write a blog about how I personally do it.

I will be writing about static files only or at least image files present on a server that you can install applications and run scripts on.
So no images in a database or images that are stored in a cloud storage.
For that refer to cloud-flare image optimization or such other services.

# Image optimization
I use [ImageMagick](https://imagemagick.org/index.php) to optimize images.
So I will be talking about that, again you can use other tools or online webapps to do the same.
I convert images to a `avif`, `webp`, `jpeg` format.
Most browsers support these formats and they are much smaller than `png` or `jpg` formats.

But just in case I also convert them to `jpg` format.
Look at [CanIUse](https://caniuse.com/avif) for the browser support for `avif` format.
Still not all green.

I use this script to convert images to these formats.
```bash
#!/bin/bash
image-opti(){
convert ${1} \
  -strip -write ${1%%.*}.avif \
  -strip -quality 85% -write ${1%%.*}.webp \
  -strip -write ${1%%.*}.jpg \
  -strip -write ${1}
}
```
Usage being simply `image-opti image.png`.
It outputs `image.avif`, `image.webp`, `image.jpg` and `image.png`.
Optimizing images is the easy part.

# Serving images
It is also the easy part at least if it is for a static website like this one.
I use [Hugo](https://gohugo.io/) to generate this website.

By default Hugo has this feature called [image processing](https://gohugo.io/content-management/image-processing/).
This is a very powerful feature that allows you to resize images on the fly and much more, but I don't use it.
I'd rather handle this on my own.
As far as i know it does not handle multiple formats.

I simply use HTML [picture tag](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/picture) tag to handle image optimization.
It is a very simple tag that allows you to specify multiple sources for an image.
Whichever one is supported by the browser will be used.
That is exactly what I want.

No superpowers needed.
Hugo also has this feature called [shortcodes](https://gohugo.io/content-management/shortcodes/).
These are like macros but for HTML or markdown files.
I created this shortcode to post images with caption in my posts.
```html
<figure>
    <picture class={{.Get "class"}}>
        <source srcset="/img/post/{{.Get "year"}}/{{.Get "src"}}.avif" type="image/avif">
        <source srcset="/img/post/{{.Get "year"}}/{{.Get "src"}}.webp" type="image/webp">
        <img src="/img/post/{{.Get "year"}}/{{.Get "src"}}.jpg" alt="{{.Get "alt"}}">
    </picture>
    <figcaption style="text-align:center">{{.Get "caption"}}</figcaption>
</figure>
```
An example usage would be
```html
<image class="img-fluid" year="2021" src="image-name" alt="alt text" caption="caption text">
```
inside a pair of `{{}}`.
Some things are optional here and is necessary for my use case only.
I use year to reduce the number of images in a single directory.
