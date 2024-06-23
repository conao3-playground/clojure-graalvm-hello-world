# clojure-graalvm-hello-world

see [clj-easy/graal-docs/doc/hello-world.adoc](https://github.com/clj-easy/graal-docs/blob/master/doc/hello-world.adoc)

# Build

```
make build.native
```

will generate
- uberjar: `target/hello-world-standalone.jar`
- native bin: `target/hello-world`

# Run

```
$ time clojure -M -m hello-world.main
Hello world!

real	0m0.758s
user	0m1.549s
sys 	0m0.097s

$ time java -jar target/hello-world-standalone.jar 
Hello world!

real	0m0.526s
user	0m0.921s
sys 	0m0.079s

$ time ./target/hello-world 
Hello world!

real	0m0.017s
user	0m0.004s
sys 	0m0.008s
```

- clojure command: 0.758s (x1.0)
- uberjar: 0.526s (x1.4)
- native bin: 0.017s (x44.5)
