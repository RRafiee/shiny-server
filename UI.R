## Dr Reza Rafiee 2014-2017
## Shiny UI for the classifiers developed for Medulloblastoma

#install.packages("shiny")
#install.packages("shinythemes")
library(shiny) # load shiny at beginning at both scripts
library(shinythemes)
shinyUI(fixedPage(theme = shinytheme("united"),
                  fixedRow( 
                    column(12, 
                           br(), 
                           #mainPanel( # all of the output elements go here
                           h1("Medulloblastoma Subgroup Classification", align = "center"),
                           br(),
                           p(),
                           br(),
                           p("Newcastle University Paediatric Brain Tumour group on-line classifiers for medulloblastoma methylation data, launch apps by clicking on the buttons below:"),
                           br(),
                           # Start of MIMIC row
                           fixedRow(
                             column(1,
                                    tags$div(
                                      HTML("
                                            <a href=\"http://medullo.ncl.ac.uk:3838/mimic/\", target=\"_blank\">
                                            <button>MIMIC</button>
                                           </a>
                                           ")
                                    )
                             ),
                             column(11,
                                    p("MInimal MethylatIon Classifier, will classify MassARRAY medulloblastoma methylation data in to one of four molecular subgroups.")
                             )
                           ), # End of MIMIC row
                           
                           # Start of NIMBLE row
                           fixedRow(
                             column(1,
                                    tags$div(
                                      HTML("
                                            <a href=\"http://medullo.ncl.ac.uk:3838/NIMBLE/\", target=\"_blank\">
                                            <button>NIMBLE</button>
                                           </a>
                                           ")
                                    )
                             ),
                             column(11,
                                    p("NanostrIng MedulloBlastoma cLassifiEr, will classify nanostring (or RNAseq) medulloblastoma gene expression data in to one of four molecular subgroups.")
                             )
                           ), # End of NIMBLE row

                           # Start of MAC row
                           fixedRow(
                               column(1,
                                      tags$div(
                                          HTML("
                                            <a href=\"http://medullo.ncl.ac.uk:3838/mac/\", target=\"_blank\">
                                            <button>MAC</button>
                                           </a>
                                           ")
                                      )
                                      ),
                               column(11,
                                      p("Methylation Array Classifier, will classify illumina 450k and EPIC medulloblastoma methylation array data in to one of four molecular subgroups.")
                                      )
                           ), # End of MAC row 
                           hr(),
                           p("WARNING: Classifiers are for research use only, and should only be used on samples with a confirmed histopathological diagnosis of medulloblastoma. MassARRAY is a registered trademark of Agena Bioscience."),
                           hr(),
                           img(src = "nicr.png"), img(src = "ncl.png"),
                           br()
                           #) # End of mainPanel
                    ) # End of column
                  ) # End of fixedRow
                  
) # End fluidPage

) # End shinyUI
