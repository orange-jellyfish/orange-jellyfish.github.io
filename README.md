# Orange Jellyfish Group website

This website was built using Jekyll which is basically a templating language for HTML.
What this means is that the code in this repository can be compiled to a static HTML website.
The advantage is that a lot of the tedious tasks can be automated that one would encounter when manually coding the website in plain HTML (i.e. we can automatically generate HTML to list the publications from a BibTeX file).

Note that this website is based on the [al-folio](https://github.com/alshedivat/al-folio) template (the linked GitHub repository may be helpful when encountering issues).

## Installation

1. First, install `ruby` version 2.x.
2. Next, install the dependencies using the command `bundle install`.
3. When developing the website, run `./serve.sh`. This will start a local development server that will serve the website on localhost and automatically recompile when files in this repository are changes (note that changes to `_config.yml` or the bibliography will require you to kill the process and run `./serve.sh` again).

## Deployment

To deploy the website, run `./build.sh`.
This will generate the static HTML website in the `_site` folder which you can copy to your webserver.

## Features

This section will provide some instructions on how to customize the website.

### General configuration

The `_config.yml` file is responsible for the general configuration.
The options are well-documented in the file itself.
You should set the `url` configuration option to the publicly acessible URL where the website will be deployed.

### Bibliography

The publications should be provided in BibTeX format in a file called `oj_bibliography_OJgroup.bib`.
You may use the following special BibTeX attributes (these are all optional):

- `url`: link to the published paper (will be added as a hyperlink when clicking on the image in the publications list)
- `code`: link to associated open source code
- `website`: link to associated website, if the paper has its own website
- `img`: link to a thumbnail image (this thumbnail should be in the `/assets/img/publications/` folder)
- `pdf`: link to PDF fulltext
- `badge`: a badge text to display at the top of the thumbnail (for popular venues, this will automatically be populated by the short form venue name, see `_data/venues.yml`)
- `selected`: setting this attribute to `true` will display this publication as one of the _selected publications_ on the main page

Example:

```bibtex
@article{WolfAran2021,
  author  = {W{\"o}lflein, G. and Arandjelovi{\'c}, O.},
  year    = {2021},
  title   = {Determining chess game state from an image.},
  journal = {The Journal of Imaging},
  volume  = {7},
  number  = {6},
  pages   = {94},
  _month  = {June},
  _note   = {{DOI:~10.3390/jimaging7060094}},
  note1   = {ERA:~n/a},
  customj = {62},
  url     = {https://www.mdpi.com/2313-433X/7/6/94},
  code    = {https://github.com/georg-wolflein/chesscog},
  website = {https://www.chesscog.com},
  img     = {/assets/img/publications/chesscog.png},
  pdf     = {https://www.mdpi.com/2313-433X/7/6/94/pdf},
  owner   = {oa7}
}
```

### People

The website has two sections that list people associated with the group:

- the **members** page lists current members and alumni; and
- the **collaborators** page lists collaborators.

Each person is defined in their own markdown document in the `_people` folder.
To add a new person, simply copy one of the existing people and modify the file accordingly.
The `type` attribute at the top of the file can be one of: `member`, `alumnus`, `collaborator`.
Note also that the `img` attribute can be used to set a profile picture (which should be placed in the `assets/img/people` folder).

## Further questions

If you have further questions, email Georg Wölflein.
