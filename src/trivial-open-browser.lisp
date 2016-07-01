(in-package :cl-user)
(defpackage trivial-open-browser
  (:use :cl)
  (:export :open-browser-through-shell
           :*browser-function*
           :open-browser))
(in-package :trivial-open-browser)

(defparameter +format-string+
  #+(or win32 mswindows windows)
  "explorer ~S"
  #+(or macos darwin)
  "open ~S"
  #-(or win32 mswindows macos darwin windows)
  "xdg-open ~S")

(defun open-browser-through-shell (url)
  "Run a shell command to open `url`."
  (uiop:run-program (format nil +format-string+ url)))

(defparameter *browser-function* #'open-browser-through-shell
  "The function that gets called with the URL to open the browser. Defaults to
  `browser-function`.")

(defun open-browser (url)
  "Open the browser to `url`."
  (funcall *browser-function* url))
