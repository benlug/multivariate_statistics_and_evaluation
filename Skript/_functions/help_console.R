# help_console <- function(topic, format=c("text", "html", "latex", "Rd"),
#                          lines=NULL, before=NULL, after=NULL) {  
#   format=match.arg(format)
#   if (!is.character(topic)) topic <- deparse(substitute(topic))
#   helpfile = utils:::.getHelpFile(help(topic))
#   
#   hs <- capture.output(switch(format, 
#                               text=tools:::Rd2txt(helpfile),
#                               html=tools:::Rd2HTML(helpfile),
#                               latex=tools:::Rd2latex(helpfile),
#                               Rd=tools:::prepare_Rd(helpfile)
#   )
#   )
#   if(!is.null(lines)) hs <- hs[lines]
#   hs <- c(before, hs, after)
#   cat(hs, sep="\n")
#   invisible(hs)
# }

knitr::opts_chunk$set(fig.width = 4.8, fig.height = 3.5, fig.align = "center", 
                      comment = NA, strip.white = TRUE, out.width = ".9\\textwidth",
                      warning = FALSE, message = FALSE)
options(digits = 7)
options("show.signif.stars" = FALSE)
# set_theme(base = jtools::theme_nice())
set.seed(12345)


