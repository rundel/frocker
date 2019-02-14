all: r tidyverse geospatial

base: .PHONY
	make -C base/ latest 

tidyverse: .PHONY
	make -C tidyverse/ latest 

geospatial: .PHONY
	make -C geospatial/ latest 

bayes: .PHONY
	make -C bayes/ latest 

push:
	make -C base/ push 
	make -C tidyverse/ push 
	make -C geospatial/ push 
	make -C bayes/ push 

.PHONY:
	echo "Building openblasr versioned images locally...\n"

