# passion-project
SO PASSIONATE!

**ITV STANDS FOR INITIAL THOUGHT VOMIT**

A retro game collection catalog/management app.

**Resources Used:**

* [Giantbomb's API](http://www.giantbomb.com/api/), "an extremely mature, well-organized, and continuously updated resource of video game information."

* [Videogame System Icons](http://starvingartist.deviantart.com/art/Antiseptic-Videogame-Systems-23217105) by starvingartist

----

## List of Platforms to Catalog By (listed by release date)

* Atari 2600
* NES
* Sega Genesis
* GB
* GBC
* SNES
* Playstation
* N64
* PS2
* GBA
* XBox
* Gamecube

----

## Models (ITV):

### MVP:

* User
* Platform
* Game

### Non-MVP:

In order of feasibility:

* Backlog
* Rating
* Genre
* Concept
* Theme
* Publisher

### Attributes for each MVP model (ITV, based on API docs)

* Platform
  * name
  * abbreviation
  * might as wells: `gb_id`, `gb_api_detail_url`
  * (not sure if I'll actually need the following, but may as well include:)
  * description (deck in API)
  * main image url
  * original price
  * release date

* Game
  * name
  * description (deck in API)
  * genre
  * themes
  * main image url
  * original release date
  * platform
  * publishers
  * might as wells: `gb_id`, `gb_api_detail_url`

----

## Useful links to keep track of

[Giantbomb API docs](http://www.giantbomb.com/api/documentation)

[Giantbomb API quick guide](http://www.giantbomb.com/forums/api-developers-3017/quick-start-guide-to-using-the-api-1427959/#14)

[Giantbomb API dev forum](http://www.giantbomb.com/forums/api-developers-3017/)

[Additional pixel art](https://www.gp32spain.com/imagenes/consolas/)

----

## Other comments

* logistics for adding game model instances: games are added to the database upon user search + add
  * to add, is actually a form (the image is the submit button with all the data from API)
  * add attributes via a `before_save` using a bunch of functions

* modals for greying out the rest of the page and displaying partials w/ information (or even login/register pages) [possibly non-MVP]