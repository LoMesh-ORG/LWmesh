/*
 * MIT License (MIT)
 *
 * Copyright (c) 2019 Kristian KinderlÃ¶v
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

/*!
 * \addtogroup CIRCULARBUFFER
 * \{
 *
 * \file        circularbuffer.c
 *
 * \brief       A circular_buffer implementation.
 *
 * \}
 */

/* **** Includes **** */

#include "circular_buffer.h"
#include <string.h>
#include <assert.h>

/* **** Defines **** */

/* **** Typedefs **** */

/* **** Static Function Declarations **** */

/* **** Static Variables **** */

/* **** Global Variables **** */

/* **** Static Function Definitions **** */

/* **** Function Definitions **** */

void CircularBufferInit(CircularBufferContext *ctx, void *buf, size_t buf_size,
                        size_t element_size) {
    size_t size = buf_size / element_size;
    ctx->buf = buf;
    ctx->write_pos = 0u;
    ctx->read_pos = 0u;
    ctx->element_size = element_size;
    ctx->max_size = size - 1u;
}

void CircularBufferClear(CircularBufferContext *ctx) {
    ctx->write_pos = 0u;
    ctx->read_pos = 0u;
}

int8_t CircularBufferPushBack(CircularBufferContext *ctx, void *val) {
    size_t write_pos = (ctx->write_pos + 1) & ctx->max_size;
    int ret_var;
    // Check if full
    if (write_pos == ctx->read_pos) {
//    if (0 == CircularBufferSpace(&ctx)) {
        ret_var = -1;
    }
    else{
    memcpy(&ctx->buf[ctx->write_pos * ctx->element_size], val,
           ctx->element_size);
    ctx->write_pos = write_pos;
    
    ret_var = 0;
    }
    return ret_var;
}

int8_t CircularBufferPopFront(CircularBufferContext *ctx, void *val) {
    // Check if empty
    int ret_var;
    if (ctx->read_pos == ctx->write_pos) {
        ret_var = -1;
    }
    else {
        memcpy(val, &ctx->buf[ctx->read_pos * ctx->element_size],
           ctx->element_size);

        ctx->read_pos = (ctx->read_pos + 1) & ctx->max_size;

        ret_var = 0;
    }
    return ret_var;
}

int8_t CircularBufferPeek(const CircularBufferContext *ctx, size_t num,
                           void **elem) {
    int ret_var;
    size_t write_pos = ctx->write_pos;
    size_t read_pos = ctx->read_pos;
    size_t size = ((write_pos - read_pos) & ctx->max_size);
    uint8_t size_int = (uint8_t)size;

    // Check that the buffer isn't empty and
    // that num is less than number of added elements
    if ((0u == size_int) || (size <= num)) {
        ret_var = -1;
    }

    else{
        size_t element_pos = ((read_pos + num) & ctx->max_size);
        *elem = &ctx->buf[element_pos * ctx->element_size];
        ret_var = 0;
    }
    return ret_var;
}

size_t CircularBufferSize(const CircularBufferContext *ctx) {
    return ((ctx->write_pos - ctx->read_pos) & ctx->max_size);
}

size_t CircularBufferSpace(const CircularBufferContext *ctx) {

    return (ctx->max_size - CircularBufferSize(ctx));
}

inline bool CircularBufferEmpty(const CircularBufferContext *ctx) {
    return (ctx->read_pos == ctx->write_pos);
}
