% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/consensusSLP.R
\name{scr_slp}
\alias{scr_slp}
\title{Identify SLPs in screen hits}
\usage{
scr_slp(cell, screen_data, cell_mut, tumour_slp)
}
\arguments{
\item{cell}{a cell line.}

\item{screen_data}{a data.table of genomic screen results with three columns, "screen_entrez", "screen_symbol" and "cell_line".}

\item{cell_mut}{cell line mutation data.}

\item{tumour_slp}{merged SLPs.}
}
\value{
A data.table.
  \describe{
    \item{cell_line}{Name of cell lines.}
    \item{screen_entrez}{Entrez ids of hits.}
    \item{screen_symbol}{Gene symbols of hits.}
    \item{mut_entrez}{Entrez ids of mutations.}
    \item{mut_symbol}{Gene symbols of mutations.}
    \item{is_slp}{Whether the targeted gene is a SLP.}
    \item{pvalue}{p_value from \code{\link[RankProd]{RankProducts}}.}
    \item{fdr}{"BH" adjusted pvalue via \code{\link[stats]{p.adjust}}.}
    \item{im}{The importance value returned by \code{\link{genie3}}.}
    \item{dualhit}{Whether the slp is identified by \code{\link{corr_slp}} and \code{\link{comp_slp}}.}
}
}
\description{
Identify whether screen hits are SLPs of mutations deteced in both patients and cell lines, based on
predicted SLPs in \code{\link{corr_slp}} and \code{\link{comp_slp}}.
}