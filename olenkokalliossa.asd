(defsystem "olenkokalliossa"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on (:hunchentoot :json-responses :drakma)
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :build-operation "program-op" ;; leave as is
  :build-pathname "ohojelma"
  :entry-point "olenkokalliossa:hello"
  :in-order-to ((test-op (test-op "olenkokalliossa/tests"))))

(defsystem "olenkokalliossa/tests"
 :author ""
 :license ""
 :depends-on ("olenkokalliossa"
   "rove")
 :components ((:module "tests"
     :components
     ((:file "main"))))
 :description "Test system for olenkokalliossa"
 :perform (test-op (op c) (symbol-call :rove :run c)))
