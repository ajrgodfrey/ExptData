
# ExptData

<!-- badges: start -->
<!-- badges: end -->

The goal of ExptData is to bring publicly available data sets together in a  curated form so that they are ready for use in teaching/learning of Experimental Design. This does mean some extra work on the data beyond the original source may have been undertaken.

Some data was manually entered, while other sets were found online. Regardless of the way data came to the package, a book or journal  will be cited as the source.

In general, this package will not duplicate efforts made in such packages as `agridat`, or packages dedicated to specific books. Exceptions are those datasets whose best presentation in other packages still requires significant curation. 

Curation includes:
- meaningful dataset and variable names;
- categorical variables are stored as factors;

## Installation

You can install the development version of ExptData using:

``` r
# FILL THIS IN! HOW CAN PEOPLE INSTALL YOUR DEV PACKAGE?
```

## Example

A dataset can be made available using either:

``` r
data(Peppers,  package="ExptData")
```

or, 

``` r
library(ExptData)
```


## Data from textbooks

I have made use of the data provided on a publisher's website for a book if it was possible. These files are processed in bulk and are not given  individual scrutiny. This means that a dataset extracted from a book and given a meaningful name and having its data cleaned has its own help page.

Books included like this are Kuehl (2000) and Box, Hunter, and Hunter (2005). Users of these texts know the full citation.


## Contributions

Contributions are welcome. Please be very careful to supply:

1. a data source, possibly the website where it can be found, or a csv file if manually entered;
2. a description in the form of Roxygen documentation, including:
    - a description of all variables;
    -  a proper reference for where it appears (book or journal article);
3. your details for the DESCRIPTION file, including your email and orcid.

The more of this you can put in a PR through GitHub, the easier the contribution will be to incorporate.
