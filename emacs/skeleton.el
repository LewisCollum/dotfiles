(define-skeleton copyright-skeleton
  "SRC, inc. copyright header"
  nil
  "//*****************************************************************************\n"
  "// SRC Inc. Proprietary Information\n"
  "// This document contains proprietary data or information pertaining to items,\n"
  "// or components, or processes, or other matter developed or acquired at the\n"
  "// private expense of SRC Inc., and is restricted to use only by persons\n"
  "// authorized by SRC in writing to use it. Disclosure to unauthorized persons\n"
  "// would likely cause substantial competitive harm to SRC's business position.\n"
  "// This technical data or information shall not be furnished or disclosed to\n"
  "// or copied or used by persons outside SRC without the express written\n"
  "// approval of SRC.\n"
  "//\n"
  "// NAME: "(file-name-nondirectory (buffer-file-name))" \n"
  "// AUTHOR/DATE: lcollum/"(format-time-string "%b %d, %Y")"\n"
  "//\n"
  "// Copyright " (format-time-string "%Y")", SRC Inc.\n"
  "// Developed under internal investment\n"
  "//*****************************************************************************\n")

(define-skeleton comment-skeleton
  "Comment for SRC"
  nil
  "///////////////////////////////////////////////////////////////////////////\n"
  "///\n"
  "///////////////////////////////////////////////////////////////////////////\n")
