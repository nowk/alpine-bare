
build:
	actool build --overwrite container \
		rktlaun.ch-nowk-alpine-bare-3.2-linux-amd64.aci

fetch-local:
	sudo rkt --insecure-skip-verify fetch \
		rktlaun.ch-nowk-alpine-bare-3.2-linux-amd64.aci \
		&& sudo rkt image list

.PHONY: build fetch-local
