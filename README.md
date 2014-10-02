# `trivial-open-browser`

Open the browser to a URL, on any system.

~~~lisp
(trivial-open-browser:open-browser "http://www.google.com/")
~~~

By default, the library runs a shell command to open the browser on Windows,
Linux and OS X. You can customize it by setting the value of
`*default-browser-function*` to a custom function that takes a URL as its
argument and somehow opens the browser to that URL.

# License

Copyright (c) 2014 Fernando Borretti (eudoxiahp@gmail.com)

Licensed under the MIT License.
