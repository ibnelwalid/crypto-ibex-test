# Copyright (C) 2021 SCARV project <info@scarv.org>
#
# Use of this source code is restricted per the MIT license, a copy of which 
# can be found at https://opensource.org/licenses/MIT (or should be included 
# as LICENSE.txt within the associated archive or repository).

ifndef REPO_HOME
  $(error "execute 'source ./bin/conf.sh' to configure environment")
endif
ifndef REPO_VERSION
  $(error "execute 'source ./bin/conf.sh' to configure environment")
endif

ifndef IBEX_REPO
  $(error "set IBEX_REPO environment variable to point at the Ibex reposistory")
endif

export PORT ?= /dev/ttyUSB0

# =============================================================================
#include ${REPO_HOME}/src/hw/fpga/Makefile.in
include ${REPO_HOME}/src/hw/ibex/Makefile.in
# =============================================================================

	
	
