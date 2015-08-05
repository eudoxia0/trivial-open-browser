(in-package :cl-user)
(defpackage trivial-open-browser-asd
  (:use :cl :asdf))
(in-package :trivial-open-browser-asd)

(defsystem trivial-open-browser
  :version "0.1"
  :author "Fernando Borretti"
  :license "MIT"
  :homepage "https://github.com/eudoxia0/trivial-open-browser"
  :depends-on (:uiop)
  :components ((:module "src"
                :components
                ((:file "trivial-open-browser"))))
  :description "Open the browser to a URL, on any system."
  :long-description
  #.(uiop:read-file-string
     (uiop:subpathname *load-pathname* "README.md")))
