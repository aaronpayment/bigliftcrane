.PHONY : build build_clean debug run

build:
	docker build -t aaronpayment/bigliftcrane:latest .

build_clean:
	docker build --no-cache -t aaronpayment/bigliftcrane:latest .

debug:
	docker run --rm -ti -p 1313:1313 -v ${PWD}/website:/website aaronpayment/bigliftcrane:latest bash

run:
	docker run -d -p 1313:1313 -v ${PWD}/website:/website aaronpayment/bigliftcrane:latest hugo server -ws /website -d dev --bind=0.0.0.0
