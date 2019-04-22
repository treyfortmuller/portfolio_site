# Project Portfolio Website

My personal website and engineering project portfolio wesbite, built with Jekyll and hosted on GitHub Pages.

### Includes

I've implemented several `_includes`, liquid templates for formatting images, videos, and more without writing any HTML. Examples are listed below:

1. Image: main
	`{% include img_main.html path='/images/e-board/motor_math.png' %}`

2. Image: right
	`{% include img_right.html path='/images/e-board/motor_math.png' %}`

3. Image: left
	`{% include img_left.html path='/images/e-board/motor_math.png' %}`

4. Images: three in a row
	`{% include img_three.html left='/images/e-board/motor_math.png' center='/images/e-board/tx_rend2.png' right='/images/e-board/tx_rend3.png' %}`

5. YouTube video
	`{% include youtube.html url='https://www.youtube.com/embed/KJxlBvzlVTY?rel=0' %}`

## Credits
### Original README from HTML5 UP
```
Massively by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)


This is Massively, a text-heavy, article-oriented design built around a huge background
image (with a new parallax implementation I'm testing) and scroll effects (powered by
Scrollex). A *slight* departure from all the one-pagers I've been doing lately, but one
that fulfills a few user requests and makes use of some new techniques I've been wanting
to try out. Enjoy it :)

Demo images* courtesy of Unsplash, a radtastic collection of CC0 (public domain) images
you can use for pretty much whatever.

(* = not included)

AJ
aj@lkn.io | @ajlkn


Credits:

	Demo Images:
		Unsplash (unsplash.com)

	Icons:
		Font Awesome (fortawesome.github.com/Font-Awesome)

	Other:
		jQuery (jquery.com)
		Misc. Sass functions (@HugoGiraudel)
		Skel (skel.io)
		Scrollex (github.com/ajlkn/jquery.scrollex)
```
