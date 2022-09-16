#obj-$(DAHDI_BUILD_ALL)$(CONFIG_DAHDI_WCAXX)		+= wcaxx.o

wcaxx-objs := wcaxx-base.o wcxb_spi.o wcxb.o wcxb_flash.o
CFLAGS_wcaxx-base.o += -I$(src)/oct612x/ -I$(src)/oct612x/include -I$(src)/oct612x/octdeviceapi -I$(src)/oct612x/octdeviceapi/oct6100api
ifeq ($(HOTPLUG_FIRMWARE),yes)
  CFLAGS_wcaxx-base.o += -DHOTPLUG_FIRMWARE
endif
