export WORKSPACE=$(shell pwd)
export HABITS = $(WORKSPACE)

include $(WORKSPACE)/tools.env

include $(HABITS)/lib/make/*/*.mk
include $(HABITS)/lib/make/*.mk

