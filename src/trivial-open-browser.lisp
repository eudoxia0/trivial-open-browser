(in-package :cl-user)
(defpackage trivial-open-browser
  (:use :cl)
  (:export :open-browser))
(in-package :trivial-open-browser)

(defparameter +format-string+
  #+(or win32 mswindows)
  "start ~S"
  #+(or macos darwin)
  "open ~S"
  #-(or win32 mswindows macos darwin)
  "xdg-open ~S")

(defun open-browser (url)
  "Open the browser to `url`."
  (uiop:run-program (format nil +format-string+ url)))
