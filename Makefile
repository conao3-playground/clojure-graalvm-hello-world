all:

.PHONY: clean
clean:
	rm -rf target

.PHONY: build
build: clean
	clojure -T:build uberjar

.PHONY: build.native
build.native: target/hello-world

target/hello-world: build
	native-image \
		-jar target/hello-world-standalone.jar \
		-H:+ReportExceptionStackTraces \
		--report-unsupported-elements-at-runtime \
		--features=clj_easy.graal_build_time.InitClojureClasses \
		--verbose \
		--no-fallback \
		$@
