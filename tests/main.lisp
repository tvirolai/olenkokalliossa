(defpackage olenkokalliossa/tests/main
  (:use :cl
        :olenkokalliossa
        :rove))
(in-package :olenkokalliossa/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :olenkokalliossa)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
