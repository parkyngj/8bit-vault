# 8bit-vault

~ A previous iteration of my passion project from Phase 2 of DBC. Project is currently on hold as of 1/16/17. ~

A retro game collection catalog/management app.

**Resources Used:**

* [Giantbomb's API](http://www.giantbomb.com/api/), "an extremely mature, well-organized, and continuously updated resource of video game information."

* [Videogame System Icons](http://starvingartist.deviantart.com/art/Antiseptic-Videogame-Systems-23217105) by starvingartist

![](public/images/atari_2600.gif) ![](public/images/microsoft_xbox.gif) ![](public/images/nintendo_gamecube.gif) ![](public/images/sega_genesis.gif) (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧

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
* XBox

Retired: GBA and Gamecube, upon Alex and Chris' suggestion.

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

* possible use of [Amazon API](https://aws.amazon.com/api-gateway/) for buying consoles/games that user doesn't own?

* possible use of [YouTube API](https://developers.google.com/youtube/) for displaying related videos or etc?
