# Install from R
# library(devtools)
# install("GitHub/causalTree")

.PHONY: package check install clean
package:
	R CMD build .

check:
	R CMD check .

#R CMD REMOVE causalTree
#R CMD INSTALL causalTree_0.0.tar.gz
install:
	R CMD INSTALL .

clean:
	rm src/*.o src/*.dll causalTree*.tar.gz
