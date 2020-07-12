LISP ?= sbcl

build:
    $(LISP) --load olenkokalliossa.asd \
    	--eval '(ql:quickload :olenkokalliossa)' \
		--eval '(asdf:make :olenkokalliossa)' \
		--eval '(quit)'
