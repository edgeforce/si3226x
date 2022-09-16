
/*
 * si3226x SPI library
 *
 * Copyright (C) 2013 Skyworks, Inc.
 *
 * All rights reserved.
 *
 */

#ifndef __SI3226X_H__
#define __SI3226X_H__


#define SI3226X_DEFAULT_LATENCY	3U
#define SI3226X_DEFAULT_MAXLATENCY 12U
#define SI3226X_DMA_CHAN_SIZE	128

struct wcxb;

struct wcxb_operations {
	void (*handle_receive)(struct wcxb *xb, void *frame);
	void (*handle_transmit)(struct wcxb *xb, void *frame);
	void (*handle_error)(struct wcxb *xb);
	void (*handle_interrupt)(struct wcxb *xb, u32 pending);
};

struct wcxb_meta_desc;
struct wcxb_hw_desc;
