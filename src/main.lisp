(defpackage olenkokalliossa
  (:use :cl :hunchentoot :json-responses))
(in-package :olenkokalliossa)

(define-easy-handler (hello :uri "/web") ()
  (setf (hunchentoot:content-type*) "text/plain")
  "Hello Web World!")

(define-easy-handler (jou :uri "/jou") ()
  (json-response :status +http-ok+
                 :headers '(("X-HELLO" . "world"))
                 :data "Jambalaya"))

(defun get-env (name)
  (sb-unix::posix-getenv name))

(defun main (argv)
  (let ((server (make-instance 'easy-acceptor :port 4242
                                              :document-root #p"~/common-lisp/olenkokalliossa/frontend/public/")))
    (declare (ignore argv))
    (start server)
    (format t "Press any key to exit...~%")
    (read-char)
    (stop server)))
