wcte13xp-objs := wcte13xp-base.o wcxb_spi.o wcxb.o wcxb_flash.o




CFLAGS_wcte13xp-base.o += -I$(src)/si3226x -I$(src)/oct612x/include -I$(src)/oct612x/octdeviceapi -I$(src)/oct612x/octdeviceapi/oct6100api
ifeq ($(HOTPLUG_FIRMWARE),yes)
  CFLAGS_wcte13xp-base.o += -DHOTPLUG_FIRMWARE
endif
