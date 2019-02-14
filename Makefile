all: r tidyverse geospatial

base: .PHONY
	make -C base/ latest 

tidyverse: .PHONY
	make -C tidyverse/ latest 

geospatial: .PHONY
	make -C geospatial/ latest 

push:
	make -C base/ push 
	make -C tidyverse/ push 
	make -C geospatial/ push 

.PHONY:
	echo "Building openblasr versioned images locally...\n"

