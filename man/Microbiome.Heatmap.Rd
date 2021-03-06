% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Microbiome.Heatmap.R
\name{Microbiome.Heatmap}
\alias{Microbiome.Heatmap}
\title{Microbiome.Heatmap.R}
\usage{
Microbiome.Heatmap(FEATURES, METADATA, NTOPFEATURES, TRANSFORM, CATEGORY,
  ROWCLUSTER)
}
\arguments{
\item{FEATURES}{Table of feature/OTU/SV counts where Samples are columns, and IDs are row names.}

\item{METADATA}{Metadata file to be used for blocking.}

\item{NTOPFEATURES}{The N most abundance features to plot (defaults to all). Calculated by taking largest row sums of percentage data}

\item{TRANSFORM}{Method to transform data with for plotting, valid options are log2, log10, clr, percent, zscore or none (defaults to log10). None would be ideal if for example a list of fold changes was supplied. Zscore is calculated on clr.}

\item{CATEGORY}{(optional) Category to create separate blocks (default: order of samples in otutable)}

\item{ROWCLUSTER}{(optional) How to order rows. Valid options are: UPGMA or abundance, default is UPGMA which is UPGMA clustering of euclidean distance of CLR-normalized counts}
}
\value{
Prints a ggplot2 heatmap
}
\description{
Creates a heat map based based on user provided table. Transforms to log2(percent), log10(percent), or CLR as requested. For plotting purposes, a prior of 0.01% is added to the log percent abundances.
}
