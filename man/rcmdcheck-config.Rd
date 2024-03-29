% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/options.R
\name{rcmdcheck-config}
\alias{rcmdcheck-config}
\title{rcmdcheck configuration}
\description{
Options take precedence over environment variables. E.g. if both
the \code{RCMDCHECK_NUM_COLORS} environment variables and the
\code{rcmdcheck.num_colors} option are set, then the latter is used.
}
\details{
rcmdcheck uses the cli package for much of its output, so you can
configure the output via cli, see \link[cli:cli-config]{cli::cli-config}.

Package configration is defined in the \code{DESCRIPTION} file of the checked
package. E.g.:\preformatted{Config/build/clean-inst-doc: FALSE
}
}
\section{Environment variables}{
\itemize{
\item \code{R_PROFILE_USER}: standard R environment variable to configure the
path to the user level R profile. See \link[base:Startup]{base::R_PROFILE_USER}.
\item \code{RCMDCHECK_BASE_URL}: URL to the root of the CRAN check web page.
You can use this to select an alternative CRAN mirror. Defaults to
\verb{https://cran.r-project.org/web/checks/}.
\item \code{RCMDCHECK_DETAILS_URL}: URL to the root of the CRAN check output
page. Defaults to \verb{https://www.r-project.org/nosvn/R.check/}.
\item \code{RCMDCHECK_ERROR_ON}: the default value for the \code{error_on} argument
of \code{\link[=rcmdcheck]{rcmdcheck()}}.
\item \code{RCMDCHECK_FLAVOURS_URL} URL to the CRAN check flavours page.
You can use this to select an alternative CRAN mirror. Defaults to
\verb{https://cran.r-project.org/web/checks/check_flavors.html}.
\item \code{RCMDCHECK_NUM_COLORS}: the number of ANSI colors to use in the output.
It can be used to override the number of colors detected or configured
by the cli package. See \code{\link[cli:num_ansi_colors]{cli::num_ansi_colors()}}. This configuration
is only used for the output of rcmdcheck and it does not affect the
examples and test cases (and other code) of the checked package.
It not set, then the default of cli is uesed. The corresponding
option is \code{rcmdcheck.num_colors}.
\item \code{RCMDCHECK_TIMESTAMP_LIMIT}: lower limit is seconds, above which
rcmdcheck adds time stamps to the individual check steps. It may be
fractional. Defaults to 1/3 of a second. The corresponding option is
\code{rcmdcheck.timestamp_limit}.
\item \code{RCMDCHECK_USE_RSTUDIO_PANDOC}: Flag (\code{true} or \code{false}). If \code{true},
then rcmdcheck \emph{always} puts RStudio's pandoc (if available) on the
path. If \code{false}, then it \emph{never} does that. If not set, or set to a
different value, then pandoc is put on the path only if it is not
already available. RStudio's pandoc is detected via an \code{RSTUDIO_PANDOC}
environment variable.
\item \code{RCMDCHECK_LOAD_CHECK_ENV}: you can use this environment variable
suppress loading environment variables from the \code{tools/check.env} file.
See \code{\link[=rcmdcheck]{rcmdcheck()}} for details.
\item \code{RSTUDIO_PANDOC}: if set, rcmdcheck adds this environment variable
to the PATH if pandoc is not on the PATH already. It is usually set
in RStudio. See also the \code{RCMDCHECK_USE_RSTUDIO_PANDOC} environment
variable.
}
}

\section{Options}{
\itemize{
\item \code{rcmdcheck.num_colors}: the number of ANSI colors to use in the output.
It can be used to override the number of colors detected or configured
by the cli package. See \code{\link[cli:num_ansi_colors]{cli::num_ansi_colors()}}. This configuration
is only used for the output of rcmdcheck and it does not affect the
examples and test cases (and other code) of the checked package.
It not set, then the default of cli is uesed. The corresponding
environment variable is \code{RCMDCHECK_NUM_COLORS}.
\item \code{rcmdcheck.test_output}: Flag (\code{TRUE} or \code{FALSE}), whether
\code{\link[=print.rcmdcheck]{print.rcmdcheck()}} should print the full test output if there are
no test failures. If some tests fail, then only the failures are
printed, independently of this option.
\item \code{rcmdcheck.timestamp_limit}: lower limit is seconds, above which
rcmdcheck adds time stamps to the individual check steps. It may be
fractional. Defaults to 1/3 of a second. The corresponding environment
variable is \code{RCMDCHECK_TIMESTAMP_LIMIT}.
}
}

\section{Package configuration:}{
\itemize{
\item \code{Config/build/clean-inst-doc}: Flag (\code{TRUE} or \code{FALSE}) to
specify if the \code{inst/doc} directory should be cleaned up when
building a package directory. If not specified, then \code{NULL} is used.
See the \code{clean_doc} option of \code{\link[pkgbuild:build]{pkgbuild::build()}} for more details.
}
}

