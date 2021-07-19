#!/bin/bash
#
# Runs PAX on each activity to extract pdf hyperlinks.
# See https://www.ctan.org/pkg/pax for more details.
#
# Prerequisites:
#   sudo apt install libfile-which-perl
#   pdfannotextractor --install

for f in */Act*_Teacher.pdf; do pdfannotextractor $f; done
for f in */Act*_Student.pdf; do pdfannotextractor $f 2>/dev/null; done

# Redirecting student errors to /dev/null because of text boxes:
#
# !!! Warning: Annotation on page 1 not recognized!
#     java.lang.Exception: Unsupported annotation subtype: Widget
