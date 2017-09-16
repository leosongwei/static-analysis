;;;; http://ryepup.unwashedmeme.com/blog/2012/01/03/visualizing-call-graphs-in-lisp-using-swank-and-graphviz/

(require :iterate)
(require :alexandria)
(require :swank)
(require :cl-ppcre)

(load "./static-analysis.lisp")
(in-package :static-analysis)

(require :stumpwm)

(with-open-file (s "./stumpwm.dot" :direction :output
                   :if-exists :supersede
                   :if-does-not-exist :create)
  (call-graph->dot :stumpwm s))

;; `dot -Tpdf stumpwm.dot -o stumpwm.pdf`
