
int __ZN13mcwebsocketpp10connectionINS_6config11core_clientEE18handle_write_frameERKNSt3__110error_codeE(void * arg0) {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r20 = r1;
    r19 = arg0;
    r0 = *(arg0 + 0x4610);
    if ((*(int8_t *)(r0 + 0x41) & 0x4) != 0x0) {
            sub_1009a2524(r0, 0x400, "connection handle_write_frame");
    }
    r0 = *(r19 + 0x4460);
    r21 = *(int8_t *)(*(r0 + 0xfffffffffffffff0) + 0x5e);
    *(r19 + 0x4448) = *(r19 + 0x4440);
    r22 = *(r19 + 0x4458);
    if (r0 != r22) {
            do {
                    r0 = sub_10027ff50(r0 - 0x10);
            } while (r22 != r0);
    }
    *(r19 + 0x4460) = r22;
    if (*(int32_t *)r20 == 0x0) goto loc_1009aafc0;

loc_1009aaf74:
    var_28 = **___stack_chk_guard;
    sub_1009ab658(r19, 0x20, "handle_write_frame", r20);
    if (**___stack_chk_guard == var_28) {
            r0 = sub_1009ab294(r19, r20);
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009aafc0:
    if (r21 == 0x0) goto loc_1009ab008;

loc_1009aafc4:
    std::__1::system_category();
    r0 = sub_1009ab294(r19, &var_58);
    goto loc_1009aafdc;

loc_1009aafdc:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009ab008:
    std::__1::mutex::lock();
    *(int8_t *)(r19 + 0x4470) = 0x0;
    r21 = *(r19 + 0x4430);
    r0 = std::__1::mutex::unlock();
    if (r21 == 0x0) goto loc_1009aafdc;

loc_1009ab02c:
    sub_1009a4c34(r19);
    r0 = operator new();
    r8 = *qword_100e60968;
    r9 = *mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::write_frame();
    *(int128_t *)r0 = r8 + 0x10;
    *(int128_t *)(r0 + 0x8) = r9;
    *(int128_t *)(r0 + 0x10) = 0x0;
    *(int128_t *)(r0 + 0x18) = var_58;
    *(r0 + 0x20) = var_50;
    sub_1009a3e1c(r19, &stack[-88]);
    r0 = r0;
    if (&stack[-88] == r0) goto loc_1009ab09c;

loc_1009ab08c:
    if (r0 == 0x0) goto loc_1009ab0a8;

loc_1009ab090:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1009ab0a4;

loc_1009ab0a4:
    r0 = (r8)();
    goto loc_1009ab0a8;

loc_1009ab0a8:
    if (0x0 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (*mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::write_frame() == 0x0) {
                    (*(*0x0 + 0x10))(0x0);
                    r0 = std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_1009aafdc;

loc_1009ab09c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1009ab0a4;
}

int __ZN13mcwebsocketpp10connectionINS_6config11core_clientEE30handle_close_handshake_timeoutERKNSt3__110error_codeE(void * arg0) {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = r1;
    r19 = arg0;
    sub_1009a6c98(&var_40, 0x5);
    r9 = *(r21 + 0x8);
    r8 = *(int32_t *)r21;
    if (r9 == var_38) {
            asm { ccmp       w8, w11, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            r20 = *(r19 + 0x4610);
            if (r8 != 0x0) {
                    std::__1::error_code::message();
                    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::insert();
                    *(int128_t *)(r0 + 0x8) = 0x0;
                    *(int128_t *)(r0 + 0x10) = 0x0;
                    *r0 = 0x0;
                    r0 = sub_1009a4cc0(r20, 0x400, &var_40);
                    if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
                            r0 = operator delete(var_40);
                    }
                    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                            r0 = operator delete(var_58);
                    }
            }
            else {
                    sub_1009a2524(r20, 0x400, "asio close handshake timer expired");
                    r8 = 0x1011c4d88;
                    asm { ldarb      w8, [x8] };
                    if ((r8 & 0x1) == 0x0) {
                            if (__cxa_guard_acquire() != 0x0) {
                                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                                    __cxa_atexit();
                                    __cxa_guard_release();
                            }
                    }
                    r0 = sub_1009ab294(r19, &var_40);
            }
    }
    else {
            r0 = *(r19 + 0x4610);
            r0 = sub_1009a2524(r0, 0x400, "asio close handshake timer cancelled");
    }
    return r0;
}

int __ZN13mcwebsocketpp10connectionINS_6config11core_clientEE29handle_open_handshake_timeoutERKNSt3__110error_codeE(void * arg0) {
    r31 = r31 - 0x70;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r21 = r1;
    r19 = arg0;
    sub_1009a6c98(&var_40, 0x5);
    r9 = *(r21 + 0x8);
    r8 = *(int32_t *)r21;
    if (r9 == var_38) {
            asm { ccmp       w8, w11, #0x0, eq };
    }
    if (!CPU_FLAGS & E) {
            r20 = *(r19 + 0x4610);
            if (r8 != 0x0) {
                    std::__1::error_code::message();
                    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::insert();
                    *(int128_t *)(r0 + 0x8) = 0x0;
                    *(int128_t *)(r0 + 0x10) = 0x0;
                    *r0 = 0x0;
                    r0 = sub_1009a4cc0(r20, 0x400, &var_40);
                    if ((sign_extend_64(var_29) & 0xffffffff80000000) != 0x0) {
                            r0 = operator delete(var_40);
                    }
                    if ((sign_extend_64(var_41) & 0xffffffff80000000) != 0x0) {
                            r0 = operator delete(var_58);
                    }
            }
            else {
                    sub_1009a2524(r20, 0x400, "open handshake timer expired");
                    r8 = 0x1011c4d88;
                    asm { ldarb      w8, [x8] };
                    if ((r8 & 0x1) == 0x0) {
                            if (__cxa_guard_acquire() != 0x0) {
                                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                                    __cxa_atexit();
                                    __cxa_guard_release();
                            }
                    }
                    r0 = sub_1009ab294(r19, &var_40);
            }
    }
    else {
            r0 = *(r19 + 0x4610);
            r0 = sub_1009a2524(r0, 0x400, "open handshake timer cancelled");
    }
    return r0;
}

int __ZN13mcwebsocketpp10connectionINS_6config11core_clientEE21handle_read_handshakeERKNSt3__110error_codeEm(void * arg0, long arg1) {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x1a0;
    r20 = r2;
    r19 = arg0;
    sub_1009a2524(*(arg0 + 0x4610), 0x400, "connection handle_read_handshake");
    q0 = *(int128_t *)arg1;
    if (q0 != 0x0) goto loc_1009b1d4c;

loc_1009b1c78:
    r21 = r19 + 0x308;
    std::__1::mutex::lock();
    r8 = *(int32_t *)(r19 + 0x300);
    if (r8 == 0x3) goto loc_1009b1df0;

loc_1009b1c90:
    if (r8 != 0x0 || *(int32_t *)(r19 + 0x304) != 0x2) goto loc_1009b1d1c;

loc_1009b1ca0:
    std::__1::mutex::unlock();
    if (r20 > 0x4000) goto loc_1009b1ce0;

loc_1009b1cb0:
    r27 = r19 + 0x4520;
    r23 = r19 + 0x4478;
    r21 = r19 + 0x388;
    r1 = r21;
    r0 = sub_1009b2634(r23, r1, r20);
    r22 = r0;
    if (r0 < r20) goto loc_1009b1e10;

loc_1009b1ce0:
    sub_1009a6ba0(*(r19 + 0x4618), 0x20, "Fatal boundaries checking error.");
    r8 = 0x1011c4d88;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    r1 = &var_1C8;
    goto loc_1009b1db0;

loc_1009b1db0:
    r0 = sub_1009ab294(r19, r1);
    goto loc_1009b1db8;

loc_1009b1db8:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009b1e10:
    if ((*(int8_t *)(*(r19 + 0x4610) + 0x41) & 0x4) != 0x0) {
            r24 = &var_1C8 + 0x80;
            r25 = &var_1C8 + 0x18;
            var_1C0 = 0x0;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)(&var_1C8 + 0x58) = q0;
            *(int128_t *)(&var_1C8 + 0x68) = q0;
            sub_100063f9c(&var_1C8 + 0x10, "bytes_transferred: ", 0x13);
            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), " bytes, bytes processed: ", 0x19);
            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), " bytes", 0x6);
            sub_100063e7c(r25);
            r0 = sub_1009a4cc0(r26, 0x400, &var_1E0);
            if ((sign_extend_64(var_1C9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1E0);
            }
            r28 = *qword_100e609a8;
            var_1C8 = r28 + 0x18;
            var_1B8 = r28 + 0x40;
            if ((sign_extend_64(var_159) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_170);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            r1 = *qword_100e607d8 + 0x8;
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    if (*(int8_t *)r27 == 0x0) goto loc_1009b1fa4;

loc_1009b1f84:
    if (sub_1009b2b44(r19) == 0x0) goto loc_1009b2020;

loc_1009b1f98:
    r0 = sub_1009b2a5c(r19);
    goto loc_1009b1db8;

loc_1009b2020:
    r0 = *(r19 + 0x43f8);
    if (r0 == 0x0 || (*(*r0 + 0x10))() != 0x0) goto loc_1009b20c4;

loc_1009b2038:
    if (r20 - r22 < 0x8) goto loc_1009b2268;

loc_1009b2044:
    sub_10099f18c(&var_1C8, "Sec-WebSocket-Key3");
    var_1C9 = 0x8;
    var_1E0 = *(0x388 + r22 + r19);
    r0 = sub_1009b57f4(r19 + 0x4490, &var_1C8, 0x100bf754d, r29 - 0x90, r29 - 0x98);
    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
    if ((sign_extend_64(var_1C9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1E0);
    }
    if ((sign_extend_64(var_1B1) & 0xffffffff80000000) != 0x0) {
            operator delete(var_1C8);
    }
    r22 = r22 + 0x8;
    goto loc_1009b20c4;

loc_1009b20c4:
    r24 = *(r19 + 0x4610);
    if ((*(int8_t *)(r24 + 0x41) & 0x4) != 0x0) {
            sub_1009b30a4(r23);
            r0 = sub_1009a4cc0(r24, 0x400, &var_1C8);
            if ((sign_extend_64(var_1B1) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1C8);
            }
            sub_10099f18c(&var_1C8, "Sec-WebSocket-Key3");
            r23 = r19 + 0x4490;
            r0 = sub_1009ad2c8(r23, &var_1C8);
            r25 = r19 + 0x4498;
            r8 = r0 + 0x38;
            if (r25 == r0) {
                    if (!CPU_FLAGS & E) {
                            r8 = r8;
                    }
                    else {
                            r8 = 0x1011dc838;
                    }
            }
            r9 = sign_extend_64(*(int8_t *)(r8 + 0x17));
            if ((r9 & 0xffffffff80000000) == 0x0) {
                    r24 = r9 & 0xff;
            }
            else {
                    r24 = *(r8 + 0x8);
            }
            if ((sign_extend_64(var_1B1) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1C8);
            }
            if (r24 != 0x0) {
                    r24 = *(r19 + 0x4610);
                    sub_10099f18c(&var_1E0, "Sec-WebSocket-Key3");
                    r0 = sub_1009ad2c8(r23, &var_1E0);
                    r8 = r0 + 0x38;
                    if (r25 == r0) {
                            if (!CPU_FLAGS & E) {
                                    r0 = r8;
                            }
                            else {
                                    r0 = 0x1011dc838;
                            }
                    }
                    sub_1009a56e4(r0);
                    r0 = sub_1009a4cc0(r24, 0x400, &var_1C8);
                    if ((sign_extend_64(var_1B1) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_1C8);
                    }
                    if ((sign_extend_64(var_1C9) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_1E0);
                    }
            }
    }
    r1 = r22 + r19 + 0x388;
    r2 = r20 + r19 + 0x388 - r1;
    if (r2 != 0x0) {
            memmove(r21, r1, r2);
    }
    *(r19 + 0x4388) = r20 - r22;
    *(int32_t *)(r19 + 0x304) = 0x6;
    r0 = sub_1009b336c(r19);
    if (*(int8_t *)(r27 + 0x158) == 0x0 || *(int32_t *)(r27 + 0x15c) == 0x0) {
            r0 = sub_1009b4070(r19, &var_1C8);
    }
    goto loc_1009b1db8;

loc_1009b2268:
    sub_1009a2524(*(r19 + 0x4610), 0x400, "short key3 read");
    *(int32_t *)(r27 + 0xa0) = 0x1f4;
    r0 = sub_10099f18c(&var_1C8, "Internal Server Error");
    r20 = r19 + 0x4590;
    if ((sign_extend_64(*(int8_t *)(r19 + 0x45a7)) & 0xffffffff80000000) != 0x0) {
            operator delete(*r20);
    }
    *(r20 + 0x10) = var_1B8;
    *(int128_t *)r20 = var_1C8;
    r8 = 0x1011c4db8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4db0 = *qword_100e60830 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    goto loc_1009b1f98;

loc_1009b1fa4:
    sub_1009a4c34(r19);
    r0 = operator new();
    r8 = *qword_100e60958;
    r9 = *mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_handshake(std::__1::error_code const&, unsigned long);
    *(int128_t *)r0 = r8 + 0x10;
    *(int128_t *)(r0 + 0x8) = r9;
    *(int128_t *)(r0 + 0x10) = 0x0;
    *(int128_t *)(r0 + 0x18) = var_1C8;
    *(r0 + 0x20) = var_1C0;
    sub_1009aefec(r19, 0x1, r21, 0x4000, r29 - 0x88);
    r0 = r0;
    if (r29 - 0x88 == r0) goto loc_1009b214c;

loc_1009b2010:
    if (r0 == 0x0) goto loc_1009b2158;

loc_1009b2014:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1009b2154;

loc_1009b2154:
    r0 = (r8)();
    goto loc_1009b2158;

loc_1009b2158:
    if (0x0 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (*mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_handshake(std::__1::error_code const&, unsigned long) == 0x0) {
                    (*(*0x0 + 0x10))(0x0);
                    r0 = std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_1009b1db8;

loc_1009b214c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1009b2154;

loc_1009b1d1c:
    r8 = 0x1011c4d88;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    var_A8 = 0x1011c4d80;
    std::__1::mutex::unlock();
    goto loc_1009b1d4c;

loc_1009b1d4c:
    sub_1009a6c98(&var_1C8, 0x7);
    if (var_A8 == var_1C0) {
            asm { ccmp       w21, w10, #0x0, eq };
    }
    if (CPU_FLAGS & NE || *(int32_t *)(r19 + 0x300) != 0x3) goto loc_1009b1d94;

loc_1009b1d7c:
    r0 = *(r19 + 0x4610);
    r0 = sub_1009a2524(r0, 0x400, "got (expected) eof/state error from closed con");
    goto loc_1009b1db8;

loc_1009b1d94:
    sub_1009ab658(r19, 0x10, "handle_read_handshake", r29 - 0xb0);
    r1 = r29 - 0xb0;
    goto loc_1009b1db0;

loc_1009b1df0:
    sub_1009a2524(*(r19 + 0x4610), 0x400, "handle_read_handshake invoked after connection was closed");
    r0 = std::__1::mutex::unlock();
    goto loc_1009b1db8;
}

int __ZN13mcwebsocketpp10connectionINS_6config11core_clientEE24handle_send_http_requestERKNSt3__110error_codeE(void * arg0) {
    r31 = r31 - 0x80;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = arg0;
    sub_1009a2524(*(arg0 + 0x4610), 0x400, "handle_send_http_request");
    if (*(int128_t *)r1 != 0x0) goto loc_1009c0f54;

loc_1009c0e70:
    r20 = r19 + 0x308;
    std::__1::mutex::lock();
    r8 = *(int32_t *)(r19 + 0x300);
    if (r8 == 0x3) goto loc_1009c0fec;

loc_1009c0e88:
    if (r8 != 0x0 || *(int32_t *)(r19 + 0x304) != 0x3) goto loc_1009c0f24;

loc_1009c0e98:
    *(int32_t *)(r19 + 0x304) = 0x4;
    std::__1::mutex::unlock();
    sub_1009a4c34(r19);
    r0 = operator new();
    r8 = *qword_100e60958;
    r9 = *mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_http_response(std::__1::error_code const&, unsigned long);
    *(int128_t *)r0 = r8 + 0x10;
    *(int128_t *)(r0 + 0x8) = r9;
    *(int128_t *)(r0 + 0x10) = 0x0;
    *(int128_t *)(r0 + 0x18) = var_70;
    *(r0 + 0x20) = var_68;
    sub_1009aefec(r19, 0x1, r19 + 0x388, 0x4000, &stack[-88]);
    r0 = r0;
    if (&stack[-88] == r0) goto loc_1009c100c;

loc_1009c0f14:
    if (r0 == 0x0) goto loc_1009c1018;

loc_1009c0f18:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1009c1014;

loc_1009c1014:
    r0 = (r8)();
    goto loc_1009c1018;

loc_1009c1018:
    if (0x0 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (*mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_http_response(std::__1::error_code const&, unsigned long) == 0x0) {
                    (*(*0x0 + 0x10))(0x0);
                    r0 = std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_1009c0fc0;

loc_1009c0fc0:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009c100c:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1009c1014;

loc_1009c0f24:
    r8 = 0x1011c4d88;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    var_58 = 0x1011c4d80;
    std::__1::mutex::unlock();
    goto loc_1009c0f54;

loc_1009c0f54:
    sub_1009a6c98(&var_70, 0x7);
    if (var_58 == var_68) {
            asm { ccmp       w20, w10, #0x0, eq };
    }
    if (!CPU_FLAGS & NE && *(int32_t *)(r19 + 0x300) == 0x3) {
            r0 = *(r19 + 0x4610);
            r0 = sub_1009a2524(r0, 0x400, "got (expected) eof/state error from closed con");
    }
    else {
            sub_1009ab658(r19, 0x10, "handle_send_http_request", &var_60);
            r0 = sub_1009ab294(r19, &var_60);
    }
    goto loc_1009c0fc0;

loc_1009c0fec:
    sub_1009a2524(*(r19 + 0x4610), 0x400, "handle_send_http_request invoked after connection was closed");
    r0 = std::__1::mutex::unlock();
    goto loc_1009c0fc0;
}

int AVMakeRectWithAspectRatioInsideRect(int aspectRatio, int boundingRect) {
    r0 = _AVMakeRectWithAspectRatioInsideRect_ptr(aspectRatio, boundingRect);
    return r0;
}

int AudioFileGetProperty(int inAudioFile, int inPropertyID, void * ioDataSize, void * outPropertyData) {
    r0 = _AudioFileGetProperty_ptr(inAudioFile, inPropertyID, ioDataSize, outPropertyData);
    return r0;
}

int AudioFileClose(int inAudioFile) {
    r0 = _AudioFileClose_ptr(inAudioFile);
    return r0;
}

int AudioFileOpenURL(int inFileRef, int inPermissions, int inFileTypeHint, void * outAudioFile) {
    r0 = _AudioFileOpenURL_ptr(inFileRef, inPermissions, inFileTypeHint, outAudioFile);
    return r0;
}

int AudioFileReadBytes(int inAudioFile, int inUseCache, int inStartingByte, void * ioNumBytes, void * outBuffer) {
    r0 = _AudioFileReadBytes_ptr(inAudioFile, inUseCache, inStartingByte, ioNumBytes, outBuffer);
    return r0;
}

int AudioQueuePrime(int inAQ, int inNumberOfFramesToPrepare, void * outNumberOfFramesPrepared) {
    r0 = _AudioQueuePrime_ptr(inAQ, inNumberOfFramesToPrepare, outNumberOfFramesPrepared);
    return r0;
}

int AudioServicesCreateSystemSoundID(int inFileURL, void * outSystemSoundID) {
    r0 = _AudioServicesCreateSystemSoundID_ptr(inFileURL, outSystemSoundID);
    return r0;
}

int AudioServicesAddSystemSoundCompletion(int inSystemSoundID, int inRunLoop, int inRunLoopMode, int inCompletionRoutine, void * inClientData) {
    r0 = _AudioServicesAddSystemSoundCompletion_ptr(inSystemSoundID, inRunLoop, inRunLoopMode, inCompletionRoutine, inClientData);
    return r0;
}

void AudioServicesPlaySystemSoundWithCompletion(int inSystemSoundID, void * inCompletionBlock) {
    _AudioServicesPlaySystemSoundWithCompletion_ptr(inSystemSoundID, inCompletionBlock);
    return;
}

int AudioServicesDisposeSystemSoundID(int inSystemSoundID) {
    r0 = _AudioServicesDisposeSystemSoundID_ptr(inSystemSoundID);
    return r0;
}

void AudioServicesPlaySystemSound(int inSystemSoundID) {
    _AudioServicesPlaySystemSound_ptr(inSystemSoundID);
    return;
}

int AudioServicesSetProperty(int inPropertyID, int inSpecifierSize, void * inSpecifier, int inPropertyDataSize, void * inPropertyData) {
    r0 = _AudioServicesSetProperty_ptr(inPropertyID, inSpecifierSize, inSpecifier, inPropertyDataSize, inPropertyData);
    return r0;
}

void AudioServicesRemoveSystemSoundCompletion(int inSystemSoundID) {
    _AudioServicesRemoveSystemSoundCompletion_ptr(inSystemSoundID);
    return;
}

void AudioSessionGetProperty() {
    _AudioSessionGetProperty_ptr();
    return;
}

int CACurrentMediaTime() {
    r0 = _CACurrentMediaTime_ptr();
    return r0;
}

int CATransform3DConcat(int a, int b) {
    r0 = _CATransform3DConcat_ptr(a, b);
    return r0;
}

int CATransform3DMakeAffineTransform(int m) {
    r0 = _CATransform3DMakeAffineTransform_ptr(m);
    return r0;
}

int CATransform3DMakeRotation(int angle, int x, int y, int z) {
    r0 = _CATransform3DMakeRotation_ptr(angle, x, y, z);
    return r0;
}

int CATransform3DMakeScale(int sx, int sy, int sz) {
    r0 = _CATransform3DMakeScale_ptr(sx, sy, sz);
    return r0;
}

int CCCrypt(int op, int alg, int options, void * key, int keyLength, void * iv, void * dataIn, int dataInLength, void * dataOut, int dataOutAvailable, void * dataOutMoved) {
    r0 = _CCCrypt_ptr(op, alg, options, key, keyLength, iv, dataIn, dataInLength, dataOut, dataOutAvailable, dataOutMoved);
    return r0;
}

int CCCryptorCreate(int op, int alg, int options, void * key, int keyLength, void * iv, void * cryptorRef) {
    r0 = _CCCryptorCreate_ptr(op, alg, options, key, keyLength, iv, cryptorRef);
    return r0;
}

int CCCryptorFinal(int cryptorRef, void * dataOut, int dataOutAvailable, void * dataOutMoved) {
    r0 = _CCCryptorFinal_ptr(cryptorRef, dataOut, dataOutAvailable, dataOutMoved);
    return r0;
}

int CCCryptorGetOutputLength(int cryptorRef, int inputLength, int final) {
    r0 = _CCCryptorGetOutputLength_ptr(cryptorRef, inputLength, final);
    return r0;
}

int CCCryptorRelease(int cryptorRef) {
    r0 = _CCCryptorRelease_ptr(cryptorRef);
    return r0;
}

int CCCryptorUpdate(int cryptorRef, void * dataIn, int dataInLength, void * dataOut, int dataOutAvailable, void * dataOutMoved) {
    r0 = _CCCryptorUpdate_ptr(cryptorRef, dataIn, dataInLength, dataOut, dataOutAvailable, dataOutMoved);
    return r0;
}

void CCHmac(int algorithm, void * key, int keyLength, void * data, int dataLength, void * macOut) {
    _CCHmac_ptr(algorithm, key, keyLength, data, dataLength, macOut);
    return;
}

void CCHmacInit(void * ctx, int algorithm, void * key, int keyLength) {
    _CCHmacInit_ptr(ctx, algorithm, key, keyLength);
    return;
}

void CCHmacFinal(void * ctx, void * macOut) {
    _CCHmacFinal_ptr(ctx, macOut);
    return;
}

void CCHmacUpdate(void * ctx, void * data, int dataLength) {
    _CCHmacUpdate_ptr(ctx, data, dataLength);
    return;
}

void * CC_MD5(void * data, int len, void * md) {
    r0 = _CC_MD5_ptr(data, len, md);
    return r0;
}

int CCKeyDerivationPBKDF(int algorithm, void * password, int passwordLen, void * salt, int saltLen, int prf, int rounds, void * derivedKey, int derivedKeyLen) {
    r0 = _CCKeyDerivationPBKDF_ptr(algorithm, password, passwordLen, salt, saltLen, prf, rounds, derivedKey, derivedKeyLen);
    return r0;
}

int CC_MD5_Final(void * md, void * c) {
    r0 = _CC_MD5_Final_ptr(md, c);
    return r0;
}

int CC_MD5_Init(void * c) {
    r0 = _CC_MD5_Init_ptr(c);
    return r0;
}

void * CC_SHA1(void * data, int len, void * md) {
    r0 = _CC_SHA1_ptr(data, len, md);
    return r0;
}

int CC_MD5_Update(void * c, void * data, int len) {
    r0 = _CC_MD5_Update_ptr(c, data, len);
    return r0;
}

int CC_SHA1_Update(void * c, void * data, int len) {
    r0 = _CC_SHA1_Update_ptr(c, data, len);
    return r0;
}

int CC_SHA1_Final(void * md, void * c) {
    r0 = _CC_SHA1_Final_ptr(md, c);
    return r0;
}

int CC_SHA1_Init(void * c) {
    r0 = _CC_SHA1_Init_ptr(c);
    return r0;
}

void * CC_SHA256(void * data, int len, void * md) {
    r0 = _CC_SHA256_ptr(data, len, md);
    return r0;
}

void * CC_SHA512(void * data, int len, void * md) {
    r0 = _CC_SHA512_ptr(data, len, md);
    return r0;
}

int CFAbsoluteTimeGetCurrent() {
    r0 = (*0x100e61000)();
    return r0;
}

int CFAllocatorGetDefault() {
    r0 = _CFAllocatorGetDefault_ptr();
    return r0;
}

void CFArrayAppendValue(int theArray, void * value) {
    _CFArrayAppendValue_ptr(theArray, value);
    return;
}

int CFArrayCreate(int allocator, void * values, int numValues, void * callBacks) {
    r0 = _CFArrayCreate_ptr(allocator, values, numValues, callBacks);
    return r0;
}

int CFArrayGetCount(int theArray) {
    r0 = _CFArrayGetCount_ptr(theArray);
    return r0;
}

int CFArrayCreateMutable(int allocator, int capacity, void * callBacks) {
    r0 = _CFArrayCreateMutable_ptr(allocator, capacity, callBacks);
    return r0;
}

void CFAttributedStringRemoveAttribute(int aStr, int range, int attrName) {
    _CFAttributedStringRemoveAttribute_ptr(aStr, range, attrName);
    return;
}

void * CFArrayGetValueAtIndex(int theArray, int idx) {
    r0 = _CFArrayGetValueAtIndex_ptr(theArray, idx);
    return r0;
}

int CFAttributedStringCreateMutable(int alloc, int maxLength) {
    r0 = _CFAttributedStringCreateMutable_ptr(alloc, maxLength);
    return r0;
}

void CFAttributedStringReplaceString(int aStr, int range, int replacement) {
    _CFAttributedStringReplaceString_ptr(aStr, range, replacement);
    return;
}

void CFAttributedStringSetAttribute(int aStr, int range, int attrName, int value) {
    _CFAttributedStringSetAttribute_ptr(aStr, range, attrName, value);
    return;
}

void CFBinaryHeapAddValue(int heap, void * value) {
    _CFBinaryHeapAddValue_ptr(heap, value);
    return;
}

int CFBinaryHeapContainsValue(int heap, void * value) {
    r0 = _CFBinaryHeapContainsValue_ptr(heap, value);
    return r0;
}

int CFBinaryHeapCreate(int allocator, int capacity, void * callBacks, void * compareContext) {
    r0 = _CFBinaryHeapCreate_ptr(allocator, capacity, callBacks, compareContext);
    return r0;
}

int CFBinaryHeapGetCount(int heap) {
    r0 = _CFBinaryHeapGetCount_ptr(heap);
    return r0;
}

void CFBinaryHeapGetValues(int heap, void * values) {
    _CFBinaryHeapGetValues_ptr(heap, values);
    return;
}

void * CFBinaryHeapGetMinimum(int heap) {
    r0 = _CFBinaryHeapGetMinimum_ptr(heap);
    return r0;
}

void CFBinaryHeapRemoveMinimumValue(int heap) {
    _CFBinaryHeapRemoveMinimumValue_ptr(heap);
    return;
}

int CFBundleGetInfoDictionary(int bundle) {
    r0 = _CFBundleGetInfoDictionary_ptr(bundle);
    return r0;
}

int CFBundleGetMainBundle() {
    r0 = _CFBundleGetMainBundle_ptr();
    return r0;
}

int CFCopyHomeDirectoryURL() {
    r0 = _CFCopyHomeDirectoryURL_ptr();
    return r0;
}

int CFDataCreate(int allocator, void * bytes, int length) {
    r0 = _CFDataCreate_ptr(allocator, bytes, length);
    return r0;
}

void * CFDataGetBytePtr(int theData) {
    r0 = _CFDataGetBytePtr_ptr(theData);
    return r0;
}

void * CFDictionaryGetValue(int theDict, void * key) {
    r0 = _CFDictionaryGetValue_ptr(theDict, key);
    return r0;
}

int CFDataGetLength(int theData) {
    r0 = _CFDataGetLength_ptr(theData);
    return r0;
}

int CFDictionaryCreate(int allocator, void * keys, void * values, int numValues, void * keyCallBacks, void * valueCallBacks) {
    r0 = _CFDictionaryCreate_ptr(allocator, keys, values, numValues, keyCallBacks, valueCallBacks);
    return r0;
}

int CFEqual(int cf1, int cf2) {
    r0 = _CFEqual_ptr(cf1, cf2);
    return r0;
}

int CFDictionaryGetValueIfPresent(int theDict, void * key, void * value) {
    r0 = _CFDictionaryGetValueIfPresent_ptr(theDict, key, value);
    return r0;
}

void CFDictionarySetValue(int theDict, void * key, void * value) {
    _CFDictionarySetValue_ptr(theDict, key, value);
    return;
}

int CFHTTPMessageCopyAllHeaderFields(int message) {
    r0 = _CFHTTPMessageCopyAllHeaderFields_ptr(message);
    return r0;
}

int CFHTTPMessageAppendBytes(int message, void * newBytes, int numBytes) {
    r0 = _CFHTTPMessageAppendBytes_ptr(message, newBytes, numBytes);
    return r0;
}

int CFErrorCopyDescription(int err) {
    r0 = _CFErrorCopyDescription_ptr(err);
    return r0;
}

int CFHTTPMessageCopyRequestMethod(int request) {
    r0 = _CFHTTPMessageCopyRequestMethod_ptr(request);
    return r0;
}

int CFHTTPMessageCopySerializedMessage(int message) {
    r0 = _CFHTTPMessageCopySerializedMessage_ptr(message);
    return r0;
}

int CFHTTPMessageCopyRequestURL(int request) {
    r0 = _CFHTTPMessageCopyRequestURL_ptr(request);
    return r0;
}

int CFHTTPMessageCreateEmpty(int alloc, int isRequest) {
    r0 = _CFHTTPMessageCreateEmpty_ptr(alloc, isRequest);
    return r0;
}

int CFHTTPMessageCreateResponse(int alloc, int statusCode, int statusDescription, int httpVersion) {
    r0 = _CFHTTPMessageCreateResponse_ptr(alloc, statusCode, statusDescription, httpVersion);
    return r0;
}

int CFHTTPMessageIsHeaderComplete(int message) {
    r0 = _CFHTTPMessageIsHeaderComplete_ptr(message);
    return r0;
}

void CFHostCancelInfoResolution(int theHost, int info) {
    _CFHostCancelInfoResolution_ptr(theHost, info);
    return;
}

void CFHTTPMessageSetHeaderFieldValue(int message, int headerField, int value) {
    _CFHTTPMessageSetHeaderFieldValue_ptr(message, headerField, value);
    return;
}

int CFHostCreateWithName(int allocator, int hostname) {
    r0 = _CFHostCreateWithName_ptr(allocator, hostname);
    return r0;
}

int CFHostGetAddressing(int theHost, void * hasBeenResolved) {
    r0 = _CFHostGetAddressing_ptr(theHost, hasBeenResolved);
    return r0;
}

int CFHostSetClient(int theHost, int clientCB, void * clientContext) {
    r0 = _CFHostSetClient_ptr(theHost, clientCB, clientContext);
    return r0;
}

void CFHostScheduleWithRunLoop(int theHost, int runLoop, int runLoopMode) {
    _CFHostScheduleWithRunLoop_ptr(theHost, runLoop, runLoopMode);
    return;
}

int CFHostStartInfoResolution(int theHost, int info, void * error) {
    r0 = _CFHostStartInfoResolution_ptr(theHost, info, error);
    return r0;
}

void CFHostUnscheduleFromRunLoop(int theHost, int runLoop, int runLoopMode) {
    _CFHostUnscheduleFromRunLoop_ptr(theHost, runLoop, runLoopMode);
    return;
}

void CFNetServiceCancel(int theService) {
    _CFNetServiceCancel_ptr(theService);
    return;
}

int CFNetServiceCreate(int alloc, int domain, int serviceType, int name, int port) {
    r0 = _CFNetServiceCreate_ptr(alloc, domain, serviceType, name, port);
    return r0;
}

int CFNetServiceGetName(int theService) {
    r0 = _CFNetServiceGetName_ptr(theService);
    return r0;
}

int CFNetServiceCreateCopy(int alloc, int service) {
    r0 = _CFNetServiceCreateCopy_ptr(alloc, service);
    return r0;
}

int CFNetServiceGetTargetHost(int theService) {
    r0 = _CFNetServiceGetTargetHost_ptr(theService);
    return r0;
}

int CFNetServiceGetType(int theService) {
    r0 = _CFNetServiceGetType_ptr(theService);
    return r0;
}

int CFNetServiceRegisterWithOptions(int theService, int options, void * error) {
    r0 = _CFNetServiceRegisterWithOptions_ptr(theService, options, error);
    return r0;
}

int CFNetServiceResolveWithTimeout(int theService, int timeout, void * error) {
    r0 = _CFNetServiceResolveWithTimeout_ptr(theService, timeout, error);
    return r0;
}

void CFNetServiceScheduleWithRunLoop(int theService, int runLoop, int runLoopMode) {
    _CFNetServiceScheduleWithRunLoop_ptr(theService, runLoop, runLoopMode);
    return;
}

int CFNetServiceSetClient(int theService, int clientCB, void * clientContext) {
    r0 = _CFNetServiceSetClient_ptr(theService, clientCB, clientContext);
    return r0;
}

void CFNetServiceUnscheduleFromRunLoop(int theService, int runLoop, int runLoopMode) {
    _CFNetServiceUnscheduleFromRunLoop_ptr(theService, runLoop, runLoopMode);
    return;
}

int CFNetworkCopySystemProxySettings() {
    r0 = _CFNetworkCopySystemProxySettings_ptr();
    return r0;
}

void CFNotificationCenterAddObserver(int center, void * observer, int callBack, int name, void * object, int suspensionBehavior) {
    _CFNotificationCenterAddObserver_ptr(center, observer, callBack, name, object, suspensionBehavior);
    return;
}

int CFNotificationCenterGetLocalCenter() {
    r0 = _CFNotificationCenterGetLocalCenter_ptr();
    return r0;
}

int CFNumberCreate(int allocator, int theType, void * valuePtr) {
    r0 = _CFNumberCreate_ptr(allocator, theType, valuePtr);
    return r0;
}

int CFNumberIsFloatType(int number) {
    r0 = _CFNumberIsFloatType_ptr(number);
    return r0;
}

int CFPreferencesAppSynchronize(int applicationID) {
    r0 = _CFPreferencesAppSynchronize_ptr(applicationID);
    return r0;
}

int CFPreferencesCopyAppValue(int key, int applicationID) {
    r0 = _CFPreferencesCopyAppValue_ptr(key, applicationID);
    return r0;
}

int CFPreferencesCopyKeyList(int applicationID, int userName, int hostName) {
    r0 = _CFPreferencesCopyKeyList_ptr(applicationID, userName, hostName);
    return r0;
}

void CFPreferencesSetAppValue(int key, int value, int applicationID) {
    _CFPreferencesSetAppValue_ptr(key, value, applicationID);
    return;
}

void CFPreferencesSetMultiple(int keysToSet, int keysToRemove, int applicationID, int userName, int hostName) {
    _CFPreferencesSetMultiple_ptr(keysToSet, keysToRemove, applicationID, userName, hostName);
    return;
}

void CFReadStreamClose(int stream) {
    _CFReadStreamClose_ptr(stream);
    return;
}

int CFReadStreamCopyError(int stream) {
    r0 = _CFReadStreamCopyError_ptr(stream);
    return r0;
}

int CFReadStreamCreateWithFile(int alloc, int fileURL) {
    r0 = _CFReadStreamCreateWithFile_ptr(alloc, fileURL);
    return r0;
}

int CFReadStreamGetStatus(int stream) {
    r0 = _CFReadStreamGetStatus_ptr(stream);
    return r0;
}

int CFReadStreamHasBytesAvailable(int stream) {
    r0 = _CFReadStreamHasBytesAvailable_ptr(stream);
    return r0;
}

int CFReadStreamOpen(int stream) {
    r0 = _CFReadStreamOpen_ptr(stream);
    return r0;
}

int CFReadStreamRead(int stream, void * buffer, int bufferLength) {
    r0 = _CFReadStreamRead_ptr(stream, buffer, bufferLength);
    return r0;
}

void CFReadStreamScheduleWithRunLoop(int stream, int runLoop, int runLoopMode) {
    _CFReadStreamScheduleWithRunLoop_ptr(stream, runLoop, runLoopMode);
    return;
}

int CFReadStreamSetClient(int stream, int streamEvents, int clientCB, void * clientContext) {
    r0 = _CFReadStreamSetClient_ptr(stream, streamEvents, clientCB, clientContext);
    return r0;
}

int CFReadStreamSetProperty(int stream, int propertyName, int propertyValue) {
    r0 = _CFReadStreamSetProperty_ptr(stream, propertyName, propertyValue);
    return r0;
}

void CFReadStreamUnscheduleFromRunLoop(int stream, int runLoop, int runLoopMode) {
    _CFReadStreamUnscheduleFromRunLoop_ptr(stream, runLoop, runLoopMode);
    return;
}

void CFRelease(int cf) {
    _CFRelease_ptr(cf);
    return;
}

int CFRetain(int cf) {
    r0 = _CFRetain_ptr(cf);
    return r0;
}

void CFRunLoopAddSource(int rl, int source, int mode) {
    _CFRunLoopAddSource_ptr(rl, source, mode);
    return;
}

void CFRunLoopAddTimer(int rl, int timer, int mode) {
    _CFRunLoopAddTimer_ptr(rl, timer, mode);
    return;
}

int CFRunLoopGetMain() {
    r0 = _CFRunLoopGetMain_ptr();
    return r0;
}

int CFRunLoopGetCurrent() {
    r0 = _CFRunLoopGetCurrent_ptr();
    return r0;
}

void CFRunLoopPerformBlock(int rl, int mode, void * block) {
    _CFRunLoopPerformBlock_ptr(rl, mode, block);
    return;
}

void CFRunLoopRun() {
    _CFRunLoopRun_ptr();
    return;
}

void CFRunLoopSourceInvalidate(int source) {
    _CFRunLoopSourceInvalidate_ptr(source);
    return;
}

void CFRunLoopStop(int rl) {
    _CFRunLoopStop_ptr(rl);
    return;
}

int CFRunLoopTimerCreate(int allocator, int fireDate, int interval, int flags, int order, int callout, void * context) {
    r0 = _CFRunLoopTimerCreate_ptr(allocator, fireDate, interval, flags, order, callout, context);
    return r0;
}

int CFRunLoopTimerCreateWithHandler(int allocator, int fireDate, int interval, int flags, int order, void * block) {
    r0 = _CFRunLoopTimerCreateWithHandler_ptr(allocator, fireDate, interval, flags, order, block);
    return r0;
}

int CFSocketCreateRunLoopSource(int allocator, int s, int order) {
    r0 = _CFSocketCreateRunLoopSource_ptr(allocator, s, order);
    return r0;
}

void CFRunLoopTimerInvalidate(int timer) {
    _CFRunLoopTimerInvalidate_ptr(timer);
    return;
}

void CFRunLoopWakeUp(int rl) {
    _CFRunLoopWakeUp_ptr(rl);
    return;
}

int CFSocketCreateWithNative(int allocator, int sock, int callBackTypes, int callout, void * context) {
    r0 = _CFSocketCreateWithNative_ptr(allocator, sock, callBackTypes, callout, context);
    return r0;
}

int CFSocketGetNative(int s) {
    r0 = _CFSocketGetNative_ptr(s);
    return r0;
}

int CFSocketGetSocketFlags(int s) {
    r0 = _CFSocketGetSocketFlags_ptr(s);
    return r0;
}

void CFSocketSetSocketFlags(int s, int flags) {
    _CFSocketSetSocketFlags_ptr(s, flags);
    return;
}

void CFSocketInvalidate(int s) {
    _CFSocketInvalidate_ptr(s);
    return;
}

void CFStreamCreatePairWithSocketToHost(int alloc, int host, int port, void * readStream, void * writeStream) {
    _CFStreamCreatePairWithSocketToHost_ptr(alloc, host, port, readStream, writeStream);
    return;
}

void CFStringAppend(int theString, int appendedString) {
    _CFStringAppend_ptr(theString, appendedString);
    return;
}

void CFStringAppendCharacters(int theString, void * chars, int numChars) {
    _CFStringAppendCharacters_ptr(theString, chars, numChars);
    return;
}

void CFStringAppendFormat(int theString, int formatOptions, int format) {
    _CFStringAppendFormat_ptr(theString, formatOptions, format);
    return;
}

int CFStringCompare(int theString1, int theString2, int compareOptions) {
    r0 = _CFStringCompare_ptr(theString1, theString2, compareOptions);
    return r0;
}

int CFStringConvertIANACharSetNameToEncoding(int theString) {
    r0 = _CFStringConvertIANACharSetNameToEncoding_ptr(theString);
    return r0;
}

unsigned long CFStringConvertEncodingToNSStringEncoding(int encoding) {
    r0 = _CFStringConvertEncodingToNSStringEncoding_ptr(encoding);
    return r0;
}

int CFStringConvertNSStringEncodingToEncoding(unsigned long encoding) {
    r0 = _CFStringConvertNSStringEncodingToEncoding_ptr(encoding);
    return r0;
}

int CFStringCreateMutable(int alloc, int maxLength) {
    r0 = _CFStringCreateMutable_ptr(alloc, maxLength);
    return r0;
}

int CFStringCreateCopy(int alloc, int theString) {
    r0 = _CFStringCreateCopy_ptr(alloc, theString);
    return r0;
}

int CFStringCreateWithBytes(int alloc, void * bytes, int numBytes, int encoding, int isExternalRepresentation) {
    r0 = _CFStringCreateWithBytes_ptr(alloc, bytes, numBytes, encoding, isExternalRepresentation);
    return r0;
}

int CFStringCreateWithCharactersNoCopy(int alloc, void * chars, int numChars, int contentsDeallocator) {
    r0 = _CFStringCreateWithCharactersNoCopy_ptr(alloc, chars, numChars, contentsDeallocator);
    return r0;
}

int CFStringCreateWithCString(int alloc, void * cStr, int encoding) {
    r0 = _CFStringCreateWithCString_ptr(alloc, cStr, encoding);
    return r0;
}

int CFStringCreateWithCStringNoCopy(int alloc, void * cStr, int encoding, int contentsDeallocator) {
    r0 = _CFStringCreateWithCStringNoCopy_ptr(alloc, cStr, encoding, contentsDeallocator);
    return r0;
}

int CFStringCreateWithSubstring(int alloc, int str, int range) {
    r0 = _CFStringCreateWithSubstring_ptr(alloc, str, range);
    return r0;
}

int CFStringCreateWithFormat(int alloc, int formatOptions, int format) {
    r0 = _CFStringCreateWithFormat_ptr(alloc, formatOptions, format);
    return r0;
}

int CFStringFind(int theString, int stringToFind, int compareOptions) {
    r0 = _CFStringFind_ptr(theString, stringToFind, compareOptions);
    return r0;
}

int CFStringGetCString(int theString, void * buffer, int bufferSize, int encoding) {
    r0 = _CFStringGetCString_ptr(theString, buffer, bufferSize, encoding);
    return r0;
}

void * CFStringGetCStringPtr(int theString, int encoding) {
    r0 = _CFStringGetCStringPtr_ptr(theString, encoding);
    return r0;
}

int CFStringGetCharacterAtIndex(int theString, int idx) {
    r0 = _CFStringGetCharacterAtIndex_ptr(theString, idx);
    return r0;
}

int CFStringGetFastestEncoding(int theString) {
    r0 = _CFStringGetFastestEncoding_ptr(theString);
    return r0;
}

int CFStringGetMaximumSizeForEncoding(int length, int encoding) {
    r0 = _CFStringGetMaximumSizeForEncoding_ptr(length, encoding);
    return r0;
}

int CFStringGetLength(int theString) {
    r0 = _CFStringGetLength_ptr(theString);
    return r0;
}

int CFStringHasPrefix(int theString, int prefix) {
    r0 = _CFStringHasPrefix_ptr(theString, prefix);
    return r0;
}

int CFStringTransform(int string, void * range, int transform, int reverse) {
    r0 = _CFStringTransform_ptr(string, range, transform, reverse);
    return r0;
}

int CFURLCopyFileSystemPath(int anURL, int pathStyle) {
    r0 = _CFURLCopyFileSystemPath_ptr(anURL, pathStyle);
    return r0;
}

int CFURLCopyPathExtension(int url) {
    r0 = _CFURLCopyPathExtension_ptr(url);
    return r0;
}

int CFURLCopyPath(int anURL) {
    r0 = _CFURLCopyPath_ptr(anURL);
    return r0;
}

int CFURLCopyQueryString(int anURL, int charactersToLeaveEscaped) {
    r0 = _CFURLCopyQueryString_ptr(anURL, charactersToLeaveEscaped);
    return r0;
}

int CFURLCreateStringByAddingPercentEscapes(int allocator, int originalString, int charactersToLeaveUnescaped, int legalURLCharactersToBeEscaped, int encoding) {
    r0 = _CFURLCreateStringByAddingPercentEscapes_ptr(allocator, originalString, charactersToLeaveUnescaped, legalURLCharactersToBeEscaped, encoding);
    return r0;
}

int CFURLCreateCopyAppendingPathComponent(int allocator, int url, int pathComponent, int isDirectory) {
    r0 = _CFURLCreateCopyAppendingPathComponent_ptr(allocator, url, pathComponent, isDirectory);
    return r0;
}

int CFURLCreateStringByReplacingPercentEscapes(int allocator, int originalString, int charactersToLeaveEscaped) {
    r0 = _CFURLCreateStringByReplacingPercentEscapes_ptr(allocator, originalString, charactersToLeaveEscaped);
    return r0;
}

int CFURLCreateWithFileSystemPath(int allocator, int filePath, int pathStyle, int isDirectory) {
    r0 = _CFURLCreateWithFileSystemPath_ptr(allocator, filePath, pathStyle, isDirectory);
    return r0;
}

int CFURLCreateStringByReplacingPercentEscapesUsingEncoding(int allocator, int origString, int charsToLeaveEscaped, int encoding) {
    r0 = _CFURLCreateStringByReplacingPercentEscapesUsingEncoding_ptr(allocator, origString, charsToLeaveEscaped, encoding);
    return r0;
}

int CFUUIDCreate(int alloc) {
    r0 = _CFUUIDCreate_ptr(alloc);
    return r0;
}

int CFUUIDCreateString(int alloc, int uuid) {
    r0 = _CFUUIDCreateString_ptr(alloc, uuid);
    return r0;
}

int CFWriteStreamCanAcceptBytes(int stream) {
    r0 = _CFWriteStreamCanAcceptBytes_ptr(stream);
    return r0;
}

int CFUUIDCreateFromUUIDBytes(int alloc, int bytes) {
    r0 = _CFUUIDCreateFromUUIDBytes_ptr(alloc, bytes);
    return r0;
}

void CFWriteStreamClose(int stream) {
    _CFWriteStreamClose_ptr(stream);
    return;
}

int CFWriteStreamGetStatus(int stream) {
    r0 = _CFWriteStreamGetStatus_ptr(stream);
    return r0;
}

int CFWriteStreamCopyError(int stream) {
    r0 = _CFWriteStreamCopyError_ptr(stream);
    return r0;
}

int CFWriteStreamOpen(int stream) {
    r0 = _CFWriteStreamOpen_ptr(stream);
    return r0;
}

void CFWriteStreamScheduleWithRunLoop(int stream, int runLoop, int runLoopMode) {
    _CFWriteStreamScheduleWithRunLoop_ptr(stream, runLoop, runLoopMode);
    return;
}

int CFWriteStreamSetClient(int stream, int streamEvents, int clientCB, void * clientContext) {
    r0 = _CFWriteStreamSetClient_ptr(stream, streamEvents, clientCB, clientContext);
    return r0;
}

int CFWriteStreamSetProperty(int stream, int propertyName, int propertyValue) {
    r0 = _CFWriteStreamSetProperty_ptr(stream, propertyName, propertyValue);
    return r0;
}

int CFWriteStreamWrite(int stream, void * buffer, int bufferLength) {
    r0 = _CFWriteStreamWrite_ptr(stream, buffer, bufferLength);
    return r0;
}

void CFWriteStreamUnscheduleFromRunLoop(int stream, int runLoop, int runLoopMode) {
    _CFWriteStreamUnscheduleFromRunLoop_ptr(stream, runLoop, runLoopMode);
    return;
}

int CGAffineTransformConcat(int t1, int t2) {
    r0 = _CGAffineTransformConcat_ptr(t1, t2);
    return r0;
}

int CGAffineTransformMakeRotation(int angle) {
    r0 = _CGAffineTransformMakeRotation_ptr(angle);
    return r0;
}

int CGAffineTransformInvert(int t) {
    r0 = _CGAffineTransformInvert_ptr(t);
    return r0;
}

int CGAffineTransformMakeScale(int sx, int sy) {
    r0 = _CGAffineTransformMakeScale_ptr(sx, sy);
    return r0;
}

int CGAffineTransformRotate(int t, int angle) {
    r0 = _CGAffineTransformRotate_ptr(t, angle);
    return r0;
}

int CGAffineTransformMakeTranslation(int tx, int ty) {
    r0 = _CGAffineTransformMakeTranslation_ptr(tx, ty);
    return r0;
}

int CGAffineTransformScale(int t, int sx, int sy) {
    r0 = _CGAffineTransformScale_ptr(t, sx, sy);
    return r0;
}

int CGAffineTransformTranslate(int t, int tx, int ty) {
    r0 = _CGAffineTransformTranslate_ptr(t, tx, ty);
    return r0;
}

int CGBitmapContextCreate(void * data, int width, int height, int bitsPerComponent, int bytesPerRow, int space, int bitmapInfo) {
    r0 = _CGBitmapContextCreate_ptr(data, width, height, bitsPerComponent, bytesPerRow, space, bitmapInfo);
    return r0;
}

int CGBitmapContextCreateImage(int context) {
    r0 = _CGBitmapContextCreateImage_ptr(context);
    return r0;
}

int CGColorCreate(int space, int components) {
    r0 = _CGColorCreate_ptr(space, components);
    return r0;
}

int CGBitmapContextGetHeight(int context) {
    r0 = _CGBitmapContextGetHeight_ptr(context);
    return r0;
}

int CGColorGetAlpha(int color) {
    r0 = _CGColorGetAlpha_ptr(color);
    return r0;
}

int CGColorGetColorSpace(int color) {
    r0 = _CGColorGetColorSpace_ptr(color);
    return r0;
}

void * CGColorGetComponents(int color) {
    r0 = _CGColorGetComponents_ptr(color);
    return r0;
}

int CGColorGetNumberOfComponents(int color) {
    r0 = _CGColorGetNumberOfComponents_ptr(color);
    return r0;
}

void CGColorRelease(int color) {
    _CGColorRelease_ptr(color);
    return;
}

int CGColorRetain(int color) {
    r0 = _CGColorRetain_ptr(color);
    return r0;
}

int CGColorSpaceCreateDeviceGray() {
    r0 = _CGColorSpaceCreateDeviceGray_ptr();
    return r0;
}

int CGColorSpaceCreateDeviceRGB() {
    r0 = _CGColorSpaceCreateDeviceRGB_ptr();
    return r0;
}

int CGColorSpaceGetModel(int space) {
    r0 = _CGColorSpaceGetModel_ptr(space);
    return r0;
}

int CGColorSpaceGetNumberOfComponents(int space) {
    r0 = _CGColorSpaceGetNumberOfComponents_ptr(space);
    return r0;
}

void CGContextAddArc(int c, int x, int y, int radius, int startAngle, int endAngle, int clockwise) {
    _CGContextAddArc_ptr(c, x, y, radius, startAngle, endAngle, clockwise);
    return;
}

void CGColorSpaceRelease(int space) {
    _CGColorSpaceRelease_ptr(space);
    return;
}

void CGContextAddPath(int context, int path) {
    _CGContextAddPath_ptr(context, path);
    return;
}

void CGContextAddRect(int c, int rect) {
    _CGContextAddRect_ptr(c, rect);
    return;
}

void CGContextBeginPath(int c) {
    _CGContextBeginPath_ptr(c);
    return;
}

void CGContextBeginTransparencyLayer(int context, int auxiliaryInfo) {
    _CGContextBeginTransparencyLayer_ptr(context, auxiliaryInfo);
    return;
}

void CGContextClearRect(int c, int rect) {
    _CGContextClearRect_ptr(c, rect);
    return;
}

void CGContextDrawImage(int c, int rect, int image) {
    _CGContextDrawImage_ptr(c, rect, image);
    return;
}

void CGContextDrawLinearGradient(int context, int gradient, int startPoint, int endPoint, int options) {
    _CGContextDrawLinearGradient_ptr(context, gradient, startPoint, endPoint, options);
    return;
}

void CGContextConcatCTM(int c, int transform) {
    _CGContextConcatCTM_ptr(c, transform);
    return;
}

void CGContextEOClip(int c) {
    _CGContextEOClip_ptr(c);
    return;
}

void CGContextDrawRadialGradient(int context, int gradient, int startCenter, int startRadius, int endCenter, int endRadius, int options) {
    _CGContextDrawRadialGradient_ptr(context, gradient, startCenter, startRadius, endCenter, endRadius, options);
    return;
}

void CGContextEndTransparencyLayer(int context) {
    _CGContextEndTransparencyLayer_ptr(context);
    return;
}

void CGContextFillRect(int c, int rect) {
    _CGContextFillRect_ptr(c, rect);
    return;
}

void CGContextFillPath(int c) {
    _CGContextFillPath_ptr(c);
    return;
}

void CGContextRelease(int c) {
    _CGContextRelease_ptr(c);
    return;
}

void CGContextRestoreGState(int c) {
    _CGContextRestoreGState_ptr(c);
    return;
}

void CGContextRotateCTM(int c, int angle) {
    _CGContextRotateCTM_ptr(c, angle);
    return;
}

void CGContextSaveGState(int c) {
    _CGContextSaveGState_ptr(c);
    return;
}

void CGContextScaleCTM(int c, int sx, int sy) {
    _CGContextScaleCTM_ptr(c, sx, sy);
    return;
}

void CGContextSetAlpha(int c, int alpha) {
    _CGContextSetAlpha_ptr(c, alpha);
    return;
}

void CGContextSetFillColorWithColor(int c, int color) {
    _CGContextSetFillColorWithColor_ptr(c, color);
    return;
}

void CGContextSetGrayFillColor(int context, int gray, int alpha) {
    _CGContextSetGrayFillColor_ptr(context, gray, alpha);
    return;
}

void CGContextSetFontSize(int c, int size) {
    _CGContextSetFontSize_ptr(c, size);
    return;
}

void CGContextSetGrayStrokeColor(int context, int gray, int alpha) {
    _CGContextSetGrayStrokeColor_ptr(context, gray, alpha);
    return;
}

void CGContextSetLineJoin(int c, int join) {
    _CGContextSetLineJoin_ptr(c, join);
    return;
}

void CGContextSetLineCap(int c, int cap) {
    _CGContextSetLineCap_ptr(c, cap);
    return;
}

void CGContextSetShadowWithColor(int context, int offset, int blur, int color) {
    _CGContextSetShadowWithColor_ptr(context, offset, blur, color);
    return;
}

void CGContextSetLineWidth(int c, int width) {
    _CGContextSetLineWidth_ptr(c, width);
    return;
}

void CGContextSetShouldSmoothFonts(int context, int shouldSmoothFonts) {
    _CGContextSetShouldSmoothFonts_ptr(context, shouldSmoothFonts);
    return;
}

void CGContextSetStrokeColor(int context, int components) {
    _CGContextSetStrokeColor_ptr(context, components);
    return;
}

void CGContextSetTextDrawingMode(int c, int mode) {
    _CGContextSetTextDrawingMode_ptr(c, mode);
    return;
}

void CGContextSetStrokeColorWithColor(int c, int color) {
    _CGContextSetStrokeColorWithColor_ptr(c, color);
    return;
}

void CGContextStrokePath(int c) {
    _CGContextStrokePath_ptr(c);
    return;
}

void CGContextSetTextMatrix(int c, int t) {
    _CGContextSetTextMatrix_ptr(c, t);
    return;
}

void CGContextSetTextPosition(int c, int x, int y) {
    _CGContextSetTextPosition_ptr(c, x, y);
    return;
}

int CGDataProviderCreateWithData(void * info, void * data, int size, int releaseData) {
    r0 = _CGDataProviderCreateWithData_ptr(info, data, size, releaseData);
    return r0;
}

int CGDataProviderCreateWithCFData(int data) {
    r0 = _CGDataProviderCreateWithCFData_ptr(data);
    return r0;
}

void CGContextTranslateCTM(int c, int tx, int ty) {
    _CGContextTranslateCTM_ptr(c, tx, ty);
    return;
}

int CGFontCopyPostScriptName(int font) {
    r0 = _CGFontCopyPostScriptName_ptr(font);
    return r0;
}

void CGDataProviderRelease(int provider) {
    _CGDataProviderRelease_ptr(provider);
    return;
}

int CGFontCopyTableForTag(int font, int tag) {
    r0 = _CGFontCopyTableForTag_ptr(font, tag);
    return r0;
}

void CGFontRelease(int font) {
    _CGFontRelease_ptr(font);
    return;
}

int CGFontCreateWithDataProvider(int provider) {
    r0 = _CGFontCreateWithDataProvider_ptr(provider);
    return r0;
}

int CGFontCreateWithFontName(int name) {
    r0 = _CGFontCreateWithFontName_ptr(name);
    return r0;
}

int CGFontRetain(int font) {
    r0 = _CGFontRetain_ptr(font);
    return r0;
}

int CGGradientCreateWithColors(int space, int colors, int locations) {
    r0 = _CGGradientCreateWithColors_ptr(space, colors, locations);
    return r0;
}

void CGGradientRelease(int gradient) {
    _CGGradientRelease_ptr(gradient);
    return;
}

int CGImageCreateCopy(int image) {
    r0 = _CGImageCreateCopy_ptr(image);
    return r0;
}

int CGImageCreate(int width, int height, int bitsPerComponent, int bitsPerPixel, int bytesPerRow, int space, int bitmapInfo, int provider, int decode, int shouldInterpolate, int intent) {
    r0 = _CGImageCreate_ptr(width, height, bitsPerComponent, bitsPerPixel, bytesPerRow, space, bitmapInfo, provider, decode, shouldInterpolate, intent);
    return r0;
}

int CGImageCreateWithImageInRect(int image, int rect) {
    r0 = _CGImageCreateWithImageInRect_ptr(image, rect);
    return r0;
}

int CGImageCreateWithJPEGDataProvider(int source, int decode, int shouldInterpolate, int intent) {
    r0 = _CGImageCreateWithJPEGDataProvider_ptr(source, decode, shouldInterpolate, intent);
    return r0;
}

int CGImageCreateWithPNGDataProvider(int source, int decode, int shouldInterpolate, int intent) {
    r0 = _CGImageCreateWithPNGDataProvider_ptr(source, decode, shouldInterpolate, intent);
    return r0;
}

int CGImageGetAlphaInfo(int image) {
    r0 = _CGImageGetAlphaInfo_ptr(image);
    return r0;
}

int CGImageGetBitmapInfo(int image) {
    r0 = _CGImageGetBitmapInfo_ptr(image);
    return r0;
}

int CGImageGetBitsPerComponent(int image) {
    r0 = _CGImageGetBitsPerComponent_ptr(image);
    return r0;
}

int CGImageGetBytesPerRow(int image) {
    r0 = _CGImageGetBytesPerRow_ptr(image);
    return r0;
}

int CGImageGetColorSpace(int image) {
    r0 = _CGImageGetColorSpace_ptr(image);
    return r0;
}

int CGImageGetHeight(int image) {
    r0 = _CGImageGetHeight_ptr(image);
    return r0;
}

int CGImageGetWidth(int image) {
    r0 = _CGImageGetWidth_ptr(image);
    return r0;
}

void CGImageRelease(int image) {
    _CGImageRelease_ptr(image);
    return;
}

int CGImageSourceCopyProperties(int isrc, int options) {
    r0 = _CGImageSourceCopyProperties_ptr(isrc, options);
    return r0;
}

int CGImageSourceCopyPropertiesAtIndex(int isrc, int index, int options) {
    r0 = _CGImageSourceCopyPropertiesAtIndex_ptr(isrc, index, options);
    return r0;
}

int CGImageSourceCreateImageAtIndex(int isrc, int index, int options) {
    r0 = _CGImageSourceCreateImageAtIndex_ptr(isrc, index, options);
    return r0;
}

int CGImageSourceCreateWithData(int data, int options) {
    r0 = _CGImageSourceCreateWithData_ptr(data, options);
    return r0;
}

int CGImageSourceGetCount(int isrc) {
    r0 = _CGImageSourceGetCount_ptr(isrc);
    return r0;
}

int CGImageSourceGetType(int isrc) {
    r0 = _CGImageSourceGetType_ptr(isrc);
    return r0;
}

void CGPathAddCurveToPoint(int path, void * m, int cp1x, int cp1y, int cp2x, int cp2y, int x, int y) {
    _CGPathAddCurveToPoint_ptr(path, m, cp1x, cp1y, cp2x, cp2y, x, y);
    return;
}

void CGPathAddEllipseInRect(int path, void * m, int rect) {
    _CGPathAddEllipseInRect_ptr(path, m, rect);
    return;
}

void CGPathAddLineToPoint(int path, void * m, int x, int y) {
    _CGPathAddLineToPoint_ptr(path, m, x, y);
    return;
}

void CGPathAddPath(int path1, void * m, int path2) {
    _CGPathAddPath_ptr(path1, m, path2);
    return;
}

void CGPathAddRect(int path, void * m, int rect) {
    _CGPathAddRect_ptr(path, m, rect);
    return;
}

void CGPathCloseSubpath(int path) {
    _CGPathCloseSubpath_ptr(path);
    return;
}

int CGPathCreateMutable() {
    r0 = _CGPathCreateMutable_ptr();
    return r0;
}

int CGPathCreateWithRect(int rect, void * transform) {
    r0 = _CGPathCreateWithRect_ptr(rect, transform);
    return r0;
}

int CGPathGetBoundingBox(int path) {
    r0 = _CGPathGetBoundingBox_ptr(path);
    return r0;
}

void CGPathMoveToPoint(int path, void * m, int x, int y) {
    _CGPathMoveToPoint_ptr(path, m, x, y);
    return;
}

void CGPathRelease(int path) {
    _CGPathRelease_ptr(path);
    return;
}

void CGPointFromString() {
    _CGPointFromString_ptr();
    return;
}

int CGRectApplyAffineTransform(int rect, int t) {
    r0 = _CGRectApplyAffineTransform_ptr(rect, t);
    return r0;
}

int CGRectContainsPoint(int rect, int point) {
    r0 = _CGRectContainsPoint_ptr(rect, point);
    return r0;
}

int CGRectContainsRect(int rect1, int rect2) {
    r0 = _CGRectContainsRect_ptr(rect1, rect2);
    return r0;
}

void CGRectDivide(int rect, void * slice, void * remainder, int amount, int edge) {
    _CGRectDivide_ptr(rect, slice, remainder, amount, edge);
    return;
}

int CGRectEqualToRect(int rect1, int rect2) {
    r0 = _CGRectEqualToRect_ptr(rect1, rect2);
    return r0;
}

void CGRectFromString() {
    _CGRectFromString_ptr();
    return;
}

int CGRectGetHeight(int rect) {
    r0 = _CGRectGetHeight_ptr(rect);
    return r0;
}

int CGRectGetMaxX(int rect) {
    r0 = _CGRectGetMaxX_ptr(rect);
    return r0;
}

int CGRectGetMaxY(int rect) {
    r0 = _CGRectGetMaxY_ptr(rect);
    return r0;
}

int CGRectGetMidX(int rect) {
    r0 = _CGRectGetMidX_ptr(rect);
    return r0;
}

int CGRectGetMidY(int rect) {
    r0 = _CGRectGetMidY_ptr(rect);
    return r0;
}

int CGRectGetMinX(int rect) {
    r0 = _CGRectGetMinX_ptr(rect);
    return r0;
}

int CGRectGetMinY(int rect) {
    r0 = _CGRectGetMinY_ptr(rect);
    return r0;
}

int CGRectGetWidth(int rect) {
    r0 = _CGRectGetWidth_ptr(rect);
    return r0;
}

int CGRectInset(int rect, int dx, int dy) {
    r0 = _CGRectInset_ptr(rect, dx, dy);
    return r0;
}

int CGRectIntegral(int rect) {
    r0 = _CGRectIntegral_ptr(rect);
    return r0;
}

int CGRectIntersection(int r1, int r2) {
    r0 = _CGRectIntersection_ptr(r1, r2);
    return r0;
}

int CGRectIntersectsRect(int rect1, int rect2) {
    r0 = _CGRectIntersectsRect_ptr(rect1, rect2);
    return r0;
}

int CGRectIsEmpty(int rect) {
    r0 = _CGRectIsEmpty_ptr(rect);
    return r0;
}

int CGRectIsNull(int rect) {
    r0 = _CGRectIsNull_ptr(rect);
    return r0;
}

int CGRectOffset(int rect, int dx, int dy) {
    r0 = _CGRectOffset_ptr(rect, dx, dy);
    return r0;
}

int CGRectStandardize(int rect) {
    r0 = _CGRectStandardize_ptr(rect);
    return r0;
}

int CGRectUnion(int r1, int r2) {
    r0 = _CGRectUnion_ptr(r1, r2);
    return r0;
}

void CGSizeFromString() {
    _CGSizeFromString_ptr();
    return;
}

int CLLocationCoordinate2DIsValid(int coord) {
    r0 = _CLLocationCoordinate2DIsValid_ptr(coord);
    return r0;
}

int CMFormatDescriptionEqual(int desc1, int desc2) {
    r0 = _CMFormatDescriptionEqual_ptr(desc1, desc2);
    return r0;
}

int CMTimeAdd(int addend1, int addend2) {
    r0 = _CMTimeAdd_ptr(addend1, addend2);
    return r0;
}

int CMFormatDescriptionGetMediaType(int desc) {
    r0 = _CMFormatDescriptionGetMediaType_ptr(desc);
    return r0;
}

int CMSampleBufferGetFormatDescription(int sbuf) {
    r0 = _CMSampleBufferGetFormatDescription_ptr(sbuf);
    return r0;
}

int CMTimeGetSeconds(int time) {
    r0 = _CMTimeGetSeconds_ptr(time);
    return r0;
}

int CMTimeCompare(int time1, int time2) {
    r0 = _CMTimeCompare_ptr(time1, time2);
    return r0;
}

int CMTimeMake(int value, int timescale) {
    r0 = _CMTimeMake_ptr(value, timescale);
    return r0;
}

int CMTimeMakeWithSeconds(int seconds, int preferredTimescale) {
    r0 = _CMTimeMakeWithSeconds_ptr(seconds, preferredTimescale);
    return r0;
}

int CMTimeMaximum(int time1, int time2) {
    r0 = _CMTimeMaximum_ptr(time1, time2);
    return r0;
}

int CMTimeMultiplyByFloat64(int time, int multiplier) {
    r0 = _CMTimeMultiplyByFloat64_ptr(time, multiplier);
    return r0;
}

int CMTimeRangeGetEnd(int range) {
    r0 = _CMTimeRangeGetEnd_ptr(range);
    return r0;
}

int CMTimeSubtract(int minuend, int subtrahend) {
    r0 = _CMTimeSubtract_ptr(minuend, subtrahend);
    return r0;
}

void CNCopyCurrentNetworkInfo() {
    _CNCopyCurrentNetworkInfo_ptr();
    return;
}

void CNCopySupportedInterfaces() {
    _CNCopySupportedInterfaces_ptr();
    return;
}

int CTFontCopyAttribute(int font, int attribute) {
    r0 = _CTFontCopyAttribute_ptr(font, attribute);
    return r0;
}

int CTFontCopyName(int font, int nameKey) {
    r0 = _CTFontCopyName_ptr(font, nameKey);
    return r0;
}

int CTFontCopyGraphicsFont(int font, void * attributes) {
    r0 = _CTFontCopyGraphicsFont_ptr(font, attributes);
    return r0;
}

int CTFontCopyPostScriptName(int font) {
    r0 = _CTFontCopyPostScriptName_ptr(font);
    return r0;
}

int CTFontCreateCopyWithAttributes(int font, int size, void * matrix, int attributes) {
    r0 = _CTFontCreateCopyWithAttributes_ptr(font, size, matrix, attributes);
    return r0;
}

int CTFontCreateForString(int currentFont, int string, int range) {
    r0 = _CTFontCreateForString_ptr(currentFont, string, range);
    return r0;
}

int CTFontCreateWithGraphicsFont(int graphicsFont, int size, void * matrix, int attributes) {
    r0 = _CTFontCreateWithGraphicsFont_ptr(graphicsFont, size, matrix, attributes);
    return r0;
}

int CTFontDescriptorCreateWithAttributes(int attributes) {
    r0 = _CTFontDescriptorCreateWithAttributes_ptr(attributes);
    return r0;
}

int CTFontCreateWithName(int name, int size, void * matrix) {
    r0 = _CTFontCreateWithName_ptr(name, size, matrix);
    return r0;
}

int CTFontDescriptorCreateWithNameAndSize(int name, int size) {
    r0 = _CTFontDescriptorCreateWithNameAndSize_ptr(name, size);
    return r0;
}

void CTFontDrawGlyphs(int font, int glyphs, int positions, int count, int context) {
    _CTFontDrawGlyphs_ptr(font, glyphs, positions, count, context);
    return;
}

double CTFontGetAdvancesForGlyphs(int font, int orientation, int glyphs, int advances, int count) {
    r0 = _CTFontGetAdvancesForGlyphs_ptr(font, orientation, glyphs, advances, count);
    return r0;
}

int CTFontGetAscent(int font) {
    r0 = _CTFontGetAscent_ptr(font);
    return r0;
}

int CTFontGetDescent(int font) {
    r0 = _CTFontGetDescent_ptr(font);
    return r0;
}

int CTFontGetLeading(int font) {
    r0 = _CTFontGetLeading_ptr(font);
    return r0;
}

int CTFontGetOpticalBoundsForGlyphs(int font, int glyphs, int boundingRects, int count, int options) {
    r0 = _CTFontGetOpticalBoundsForGlyphs_ptr(font, glyphs, boundingRects, count, options);
    return r0;
}

int CTFontGetSize(int font) {
    r0 = _CTFontGetSize_ptr(font);
    return r0;
}

int CTFontManagerRegisterGraphicsFont(int font, void * error) {
    r0 = _CTFontManagerRegisterGraphicsFont_ptr(font, error);
    return r0;
}

void CTFrameDraw(int frame, int context) {
    _CTFrameDraw_ptr(frame, context);
    return;
}

int CTFramesetterCreateFrame(int framesetter, int stringRange, int path, int frameAttributes) {
    r0 = _CTFramesetterCreateFrame_ptr(framesetter, stringRange, path, frameAttributes);
    return r0;
}

int CTFramesetterCreateWithAttributedString(int string) {
    r0 = _CTFramesetterCreateWithAttributedString_ptr(string);
    return r0;
}

int CTFramesetterSuggestFrameSizeWithConstraints(int framesetter, int stringRange, int frameAttributes, int constraints, void * fitRange) {
    r0 = _CTFramesetterSuggestFrameSizeWithConstraints_ptr(framesetter, stringRange, frameAttributes, constraints, fitRange);
    return r0;
}

int CTGetCoreTextVersion() {
    r0 = _CTGetCoreTextVersion_ptr();
    return r0;
}

int CTLineGetGlyphRuns(int line) {
    r0 = _CTLineGetGlyphRuns_ptr(line);
    return r0;
}

double CTLineGetTrailingWhitespaceWidth(int line) {
    r0 = _CTLineGetTrailingWhitespaceWidth_ptr(line);
    return r0;
}

int CTRunGetAttributes(int run) {
    r0 = _CTRunGetAttributes_ptr(run);
    return r0;
}

int CTRunGetGlyphCount(int run) {
    r0 = _CTRunGetGlyphCount_ptr(run);
    return r0;
}

void CTRunGetGlyphs(int run, int range, int buffer) {
    _CTRunGetGlyphs_ptr(run, range, buffer);
    return;
}

void * CTRunGetGlyphsPtr(int run) {
    r0 = _CTRunGetGlyphsPtr_ptr(run);
    return r0;
}

void CTRunGetPositions(int run, int range, int buffer) {
    _CTRunGetPositions_ptr(run, range, buffer);
    return;
}

void * CTRunGetPositionsPtr(int run) {
    r0 = _CTRunGetPositionsPtr_ptr(run);
    return r0;
}

int CTRunGetStatus(int run) {
    r0 = _CTRunGetStatus_ptr(run);
    return r0;
}

void CTRunGetStringIndices(int run, int range, int buffer) {
    _CTRunGetStringIndices_ptr(run, range, buffer);
    return;
}

void * CTRunGetStringIndicesPtr(int run) {
    r0 = _CTRunGetStringIndicesPtr_ptr(run);
    return r0;
}

int CTRunGetStringRange(int run) {
    r0 = _CTRunGetStringRange_ptr(run);
    return r0;
}

double CTRunGetTypographicBounds(int run, int range, void * ascent, void * descent, void * leading) {
    r0 = _CTRunGetTypographicBounds_ptr(run, range, ascent, descent, leading);
    return r0;
}

int CTTypesetterCreateLine(int typesetter, int stringRange) {
    r0 = _CTTypesetterCreateLine_ptr(typesetter, stringRange);
    return r0;
}

int CTTypesetterCreateWithAttributedStringAndOptions(int string, int options) {
    r0 = _CTTypesetterCreateWithAttributedStringAndOptions_ptr(string, options);
    return r0;
}

int CVBufferGetAttachment(int buffer, int key, void * attachmentMode) {
    r0 = _CVBufferGetAttachment_ptr(buffer, key, attachmentMode);
    return r0;
}

void CVBufferRelease(int buffer) {
    _CVBufferRelease_ptr(buffer);
    return;
}

int CVBufferRetain(int buffer) {
    r0 = _CVBufferRetain_ptr(buffer);
    return r0;
}

int CVMetalTextureCacheCreate(int allocator, int cacheAttributes, int metalDevice, int textureAttributes, void * cacheOut) {
    r0 = _CVMetalTextureCacheCreate_ptr(allocator, cacheAttributes, metalDevice, textureAttributes, cacheOut);
    return r0;
}

int CVMetalTextureCacheCreateTextureFromImage(int allocator, int textureCache, int sourceImage, int textureAttributes, int pixelFormat, int width, int height, int planeIndex, void * textureOut) {
    r0 = _CVMetalTextureCacheCreateTextureFromImage_ptr(allocator, textureCache, sourceImage, textureAttributes, pixelFormat, width, height, planeIndex, textureOut);
    return r0;
}

void CVMetalTextureCacheFlush(int textureCache, int options) {
    _CVMetalTextureCacheFlush_ptr(textureCache, options);
    return;
}

int CVMetalTextureGetTexture(int image) {
    r0 = _CVMetalTextureGetTexture_ptr(image);
    return r0;
}

void CVOpenGLESTextureCacheCreateTextureFromImage() {
    _CVOpenGLESTextureCacheCreateTextureFromImage_ptr();
    return;
}

void CVOpenGLESTextureGetName() {
    _CVOpenGLESTextureGetName_ptr();
    return;
}

void * CVPixelBufferGetBaseAddress(int pixelBuffer) {
    r0 = _CVPixelBufferGetBaseAddress_ptr(pixelBuffer);
    return r0;
}

int CVPixelBufferGetBytesPerRow(int pixelBuffer) {
    r0 = _CVPixelBufferGetBytesPerRow_ptr(pixelBuffer);
    return r0;
}

int CVPixelBufferGetHeight(int pixelBuffer) {
    r0 = _CVPixelBufferGetHeight_ptr(pixelBuffer);
    return r0;
}

int CVPixelBufferGetIOSurface(int pixelBuffer) {
    r0 = _CVPixelBufferGetIOSurface_ptr(pixelBuffer);
    return r0;
}

int CVPixelBufferGetWidth(int pixelBuffer) {
    r0 = _CVPixelBufferGetWidth_ptr(pixelBuffer);
    return r0;
}

int CVPixelBufferLockBaseAddress(int pixelBuffer, int lockFlags) {
    r0 = _CVPixelBufferLockBaseAddress_ptr(pixelBuffer, lockFlags);
    return r0;
}

int CVPixelBufferPoolCreate(int allocator, int poolAttributes, int pixelBufferAttributes, void * poolOut) {
    r0 = _CVPixelBufferPoolCreate_ptr(allocator, poolAttributes, pixelBufferAttributes, poolOut);
    return r0;
}

int CVPixelBufferPoolCreatePixelBuffer(int allocator, int pixelBufferPool, void * pixelBufferOut) {
    r0 = _CVPixelBufferPoolCreatePixelBuffer_ptr(allocator, pixelBufferPool, pixelBufferOut);
    return r0;
}

void CVPixelBufferPoolFlush(int pool, int options) {
    _CVPixelBufferPoolFlush_ptr(pool, options);
    return;
}

void CVPixelBufferPoolRelease(int pixelBufferPool) {
    _CVPixelBufferPoolRelease_ptr(pixelBufferPool);
    return;
}

void CVPixelBufferRelease(int texture) {
    _CVPixelBufferRelease_ptr(texture);
    return;
}

int CVPixelBufferUnlockBaseAddress(int pixelBuffer, int unlockFlags) {
    r0 = _CVPixelBufferUnlockBaseAddress_ptr(pixelBuffer, unlockFlags);
    return r0;
}

int DNSServiceNATPortMappingCreate(void * sdRef, int flags, int interfaceIndex, int protocol, int internalPort, int externalPort, int ttl, int callBack, void * context) {
    r0 = _DNSServiceNATPortMappingCreate_ptr(sdRef, flags, interfaceIndex, protocol, internalPort, externalPort, ttl, callBack, context);
    return r0;
}

int DNSServiceProcessResult(int sdRef) {
    r0 = _DNSServiceProcessResult_ptr(sdRef);
    return r0;
}

void DNSServiceRefDeallocate(int sdRef) {
    _DNSServiceRefDeallocate_ptr(sdRef);
    return;
}

int DNSServiceRefSockFD(int sdRef) {
    r0 = _DNSServiceRefSockFD_ptr(sdRef);
    return r0;
}

int ExtAudioFileDispose(int inExtAudioFile) {
    r0 = _ExtAudioFileDispose_ptr(inExtAudioFile);
    return r0;
}

int ExtAudioFileGetProperty(int inExtAudioFile, int inPropertyID, void * ioPropertyDataSize, void * outPropertyData) {
    r0 = _ExtAudioFileGetProperty_ptr(inExtAudioFile, inPropertyID, ioPropertyDataSize, outPropertyData);
    return r0;
}

int ExtAudioFileOpenURL(int inURL, void * outExtAudioFile) {
    r0 = _ExtAudioFileOpenURL_ptr(inURL, outExtAudioFile);
    return r0;
}

int ExtAudioFileRead(int inExtAudioFile, void * ioNumberFrames, void * ioData) {
    r0 = _ExtAudioFileRead_ptr(inExtAudioFile, ioNumberFrames, ioData);
    return r0;
}

int ExtAudioFileSetProperty(int inExtAudioFile, int inPropertyID, int inPropertyDataSize, void * inPropertyData) {
    r0 = _ExtAudioFileSetProperty_ptr(inExtAudioFile, inPropertyID, inPropertyDataSize, inPropertyData);
    return r0;
}

int MTLCreateSystemDefaultDevice() {
    r0 = _MTLCreateSystemDefaultDevice_ptr();
    return r0;
}

int NSAllocateObject(int aClass, int extraBytes, void * zone) {
    r0 = _NSAllocateObject_ptr(aClass, extraBytes, zone);
    return r0;
}

int NSClassFromString(int aClassName) {
    r0 = _NSClassFromString_ptr(aClassName);
    return r0;
}

void * NSGetSizeAndAlignment(void * typePtr, void * sizep, void * alignp) {
    r0 = _NSGetSizeAndAlignment_ptr(typePtr, sizep, alignp);
    return r0;
}

void * NSGetUncaughtExceptionHandler() {
    r0 = _NSGetUncaughtExceptionHandler_ptr();
    return r0;
}

int NSHomeDirectory() {
    r0 = _NSHomeDirectory_ptr();
    return r0;
}

void NSLog(int format) {
    _NSLog_ptr(format);
    return;
}

void NSLogv(int format, int args) {
    _NSLogv_ptr(format, args);
    return;
}

int NSSearchPathForDirectoriesInDomains(int directory, int domainMask, int expandTilde) {
    r0 = _NSSearchPathForDirectoriesInDomains_ptr(directory, domainMask, expandTilde);
    return r0;
}

int NSSelectorFromString(int aSelectorName) {
    r0 = _NSSelectorFromString_ptr(aSelectorName);
    return r0;
}

void NSSetUncaughtExceptionHandler(void * ) {
    _NSSetUncaughtExceptionHandler_ptr(arg_0);
    return;
}

void NSStringFromCGRect() {
    _NSStringFromCGRect_ptr();
    return;
}

void NSStringFromCGSize() {
    _NSStringFromCGSize_ptr();
    return;
}

int NSStringFromClass(int aClass) {
    r0 = _NSStringFromClass_ptr(aClass);
    return r0;
}

int NSStringFromProtocol(int proto) {
    r0 = _NSStringFromProtocol_ptr(proto);
    return r0;
}

int NSStringFromSelector(int aSelector) {
    r0 = _NSStringFromSelector_ptr(aSelector);
    return r0;
}

int NSTemporaryDirectory() {
    r0 = _NSTemporaryDirectory_ptr();
    return r0;
}

void * NXGetArchInfoFromCpuType(int cputype, int cpusubtype) {
    r0 = _NXGetArchInfoFromCpuType_ptr(cputype, cpusubtype);
    return r0;
}

void * NXGetLocalArchInfo() {
    r0 = _NXGetLocalArchInfo_ptr();
    return r0;
}

int OSAtomicAdd32Barrier(int theAmount, void * theValue) {
    r0 = _OSAtomicAdd32Barrier_ptr(theAmount, theValue);
    return r0;
}

int OSAtomicAdd64(int theAmount, void * theValue) {
    r0 = _OSAtomicAdd64_ptr(theAmount, theValue);
    return r0;
}

int OSAtomicCompareAndSwap64Barrier(int oldValue, int newValue, void * theValue) {
    r0 = _OSAtomicCompareAndSwap64Barrier_ptr(oldValue, newValue, theValue);
    return r0;
}

int OSAtomicCompareAndSwapPtrBarrier(void * oldValue, void * newValue, void * theValue) {
    r0 = _OSAtomicCompareAndSwapPtrBarrier_ptr(oldValue, newValue, theValue);
    return r0;
}

int OSAtomicDecrement32(void * theValue) {
    r0 = _OSAtomicDecrement32_ptr(theValue);
    return r0;
}

int OSAtomicIncrement32(void * theValue) {
    r0 = _OSAtomicIncrement32_ptr(theValue);
    return r0;
}

void OSMemoryBarrier() {
    _OSMemoryBarrier_ptr();
    return;
}

void OSSpinLockLock(void * lock) {
    _OSSpinLockLock_ptr(lock);
    return;
}

void OSSpinLockUnlock(void * lock) {
    _OSSpinLockUnlock_ptr(lock);
    return;
}

int SCNetworkReachabilityCreateWithAddress(int allocator, void * address) {
    r0 = _SCNetworkReachabilityCreateWithAddress_ptr(allocator, address);
    return r0;
}

int SCNetworkReachabilityCreateWithName(int allocator, void * nodename) {
    r0 = _SCNetworkReachabilityCreateWithName_ptr(allocator, nodename);
    return r0;
}

int SCNetworkReachabilityGetFlags(int target, void * flags) {
    r0 = _SCNetworkReachabilityGetFlags_ptr(target, flags);
    return r0;
}

int SCNetworkReachabilityScheduleWithRunLoop(int target, int runLoop, int runLoopMode) {
    r0 = _SCNetworkReachabilityScheduleWithRunLoop_ptr(target, runLoop, runLoopMode);
    return r0;
}

int SCNetworkReachabilitySetCallback(int target, int callout, void * context) {
    r0 = _SCNetworkReachabilitySetCallback_ptr(target, callout, context);
    return r0;
}

int SCNetworkReachabilitySetDispatchQueue(int target, int queue) {
    r0 = _SCNetworkReachabilitySetDispatchQueue_ptr(target, queue);
    return r0;
}

int SCNetworkReachabilityUnscheduleFromRunLoop(int target, int runLoop, int runLoopMode) {
    r0 = _SCNetworkReachabilityUnscheduleFromRunLoop_ptr(target, runLoop, runLoopMode);
    return r0;
}

int SecCertificateCopyData(int certificate) {
    r0 = _SecCertificateCopyData_ptr(certificate);
    return r0;
}

int SecCertificateCreateWithData(int allocator, int data) {
    r0 = _SecCertificateCreateWithData_ptr(allocator, data);
    return r0;
}

int SecItemAdd(int attributes, void * result) {
    r0 = _SecItemAdd_ptr(attributes, result);
    return r0;
}

int SecItemCopyMatching(int query, void * result) {
    r0 = _SecItemCopyMatching_ptr(query, result);
    return r0;
}

int SecItemDelete(int query) {
    r0 = _SecItemDelete_ptr(query);
    return r0;
}

int SecItemUpdate(int query, int attributesToUpdate) {
    r0 = _SecItemUpdate_ptr(query, attributesToUpdate);
    return r0;
}

int SecPolicyCreateBasicX509() {
    r0 = _SecPolicyCreateBasicX509_ptr();
    return r0;
}

int SecPolicyCreateSSL(int server, int hostname) {
    r0 = _SecPolicyCreateSSL_ptr(server, hostname);
    return r0;
}

int SecRandomCopyBytes(int rnd, int count, void * bytes) {
    r0 = _SecRandomCopyBytes_ptr(rnd, count, bytes);
    return r0;
}

int SecTrustCopyPublicKey(int trust) {
    r0 = _SecTrustCopyPublicKey_ptr(trust);
    return r0;
}

int SecTrustCreateWithCertificates(int certificates, int policies, void * trust) {
    r0 = _SecTrustCreateWithCertificates_ptr(certificates, policies, trust);
    return r0;
}

int SecTrustEvaluate(int trust, void * result) {
    r0 = _SecTrustEvaluate_ptr(trust, result);
    return r0;
}

int SecTrustGetCertificateAtIndex(int trust, int ix) {
    r0 = _SecTrustGetCertificateAtIndex_ptr(trust, ix);
    return r0;
}

int SecTrustGetCertificateCount(int trust) {
    r0 = _SecTrustGetCertificateCount_ptr(trust);
    return r0;
}

int SecTrustSetAnchorCertificates(int trust, int anchorCertificates) {
    r0 = _SecTrustSetAnchorCertificates_ptr(trust, anchorCertificates);
    return r0;
}

int SecTrustSetAnchorCertificatesOnly(int trust, int anchorCertificatesOnly) {
    r0 = _SecTrustSetAnchorCertificatesOnly_ptr(trust, anchorCertificatesOnly);
    return r0;
}

int SecTrustSetPolicies(int trust, int policies) {
    r0 = _SecTrustSetPolicies_ptr(trust, policies);
    return r0;
}

void UIAccessibilityIsGuidedAccessEnabled() {
    _UIAccessibilityIsGuidedAccessEnabled_ptr();
    return;
}

void UIApplicationMain() {
    _UIApplicationMain_ptr();
    return;
}

void UIGraphicsBeginImageContext() {
    _UIGraphicsBeginImageContext_ptr();
    return;
}

void UIGraphicsBeginImageContextWithOptions() {
    _UIGraphicsBeginImageContextWithOptions_ptr();
    return;
}

void UIGraphicsEndImageContext() {
    _UIGraphicsEndImageContext_ptr();
    return;
}

void UIGraphicsGetCurrentContext() {
    _UIGraphicsGetCurrentContext_ptr();
    return;
}

void UIGraphicsGetImageFromCurrentImageContext() {
    _UIGraphicsGetImageFromCurrentImageContext_ptr();
    return;
}

void UIImageJPEGRepresentation() {
    _UIImageJPEGRepresentation_ptr();
    return;
}

void UIImagePNGRepresentation() {
    _UIImagePNGRepresentation_ptr();
    return;
}

void UIImageWriteToSavedPhotosAlbum() {
    _UIImageWriteToSavedPhotosAlbum_ptr();
    return;
}

int UTTypeConformsTo(int inUTI, int inConformsToUTI) {
    r0 = _UTTypeConformsTo_ptr(inUTI, inConformsToUTI);
    return r0;
}

int UTTypeCopyPreferredTagWithClass(int inUTI, int inTagClass) {
    r0 = _UTTypeCopyPreferredTagWithClass_ptr(inUTI, inTagClass);
    return r0;
}

int UTTypeCreatePreferredIdentifierForTag(int inTagClass, int inTag, int inConformingToUTI) {
    r0 = _UTTypeCreatePreferredIdentifierForTag_ptr(inTagClass, inTag, inConformingToUTI);
    return r0;
}

void * _Block_copy(void * block) {
    r0 = __Block_copy_ptr(block);
    return r0;
}

void _Block_object_assign(void * , void * , int ) {
    __Block_object_assign_ptr(arg_0, arg_1, arg_2);
    return;
}

void _Block_object_dispose(void * , int ) {
    __Block_object_dispose_ptr(arg_0, arg_1);
    return;
}

void _Block_release(void * block) {
    __Block_release_ptr(block);
    return;
}

int _NSDictionaryOfVariableBindings(int commaSeparatedKeysString, int firstValue) {
    r0 = __NSDictionaryOfVariableBindings_ptr(commaSeparatedKeysString, firstValue);
    return r0;
}

void _Unwind_Resume(void * exception_object) {
    __Unwind_Resume_ptr(exception_object);
    return;
}

void _ZN13mcwebsocketpp10connectionINS_6config11core_clientEE17handle_read_frameERKNSt3__110error_codeEm(int arg0, int arg1) {
    pointer to mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_frame(arg0, arg1);
    return;
}

void _ZNKSt3__110error_code7messageEv() {
    pointer to std::__1::error_code::message();
    return;
}

void _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5rfindEcm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::rfind();
    return;
}

void _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4findEcm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::find();
    return;
}

void _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEPKc() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare();
    return;
}

void _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEmmPKcm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::compare();
    return;
}

void _ZNKSt3__120__vector_base_commonILb1EE20__throw_length_errorEv() {
    pointer to std::__1::__vector_base_common<true>::__throw_length_error();
    return;
}

void _ZNKSt3__120__vector_base_commonILb1EE20__throw_out_of_rangeEv() {
    pointer to std::__1::__vector_base_common<true>::__throw_out_of_range();
    return;
}

void _ZNKSt3__121__basic_string_commonILb1EE20__throw_length_errorEv() {
    pointer to std::__1::__basic_string_common<true>::__throw_length_error();
    return;
}

void _ZNKSt3__16locale9has_facetERNS0_2idE() {
    pointer to std::__1::locale::has_facet();
    return;
}

void _ZNKSt3__16locale9use_facetERNS0_2idE() {
    pointer to std::__1::locale::use_facet();
    return;
}

void _ZNKSt3__18ios_base6getlocEv() {
    pointer to std::__1::ios_base::getloc();
    return;
}

void _ZNKSt3__18time_getIcNS_19istreambuf_iteratorIcNS_11char_traitsIcEEEEE3getES4_S4_RNS_8ios_baseERjP2tmPKcSC_() {
    pointer to std::__1::time_get<char, std::__1::istreambuf_iterator<char, std::__1::char_traits<char> > >::get();
    return;
}

void _ZNKSt3__18time_putIcNS_19ostreambuf_iteratorIcNS_11char_traitsIcEEEEE3putES4_RNS_8ios_baseEcPK2tmPKcSC_() {
    pointer to std::__1::time_put<char, std::__1::ostreambuf_iterator<char, std::__1::char_traits<char> > >::put();
    return;
}

void _ZNSt11logic_errorC2EPKc() {
    pointer to std::logic_error::logic_error();
    return;
}

void _ZNSt13runtime_errorC2EPKc() {
    pointer to std::runtime_error::runtime_error();
    return;
}

void _ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE() {
    pointer to std::runtime_error::runtime_error();
    return;
}

void _ZNSt3__111__call_onceERVmPvPFvS2_E() {
    pointer to std::__1::__call_once();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5eraseEmm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::erase();
    return;
}

void _ZNSt3__112__next_primeEm() {
    pointer to std::__1::__next_prime();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendERKS5_mm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKcm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEmc() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::assign();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::insert();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKcm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::insert();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6resizeEmc() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::resize();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7replaceEmmPKcm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::replace();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__grow_byEmmmmmm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::__grow_by();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7reserveEm() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::reserve();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::push_back();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_mmRKS4_() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::operator=();
    return;
}

void _ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE3getEPclc() {
    pointer to std::__1::basic_istream<char, std::__1::char_traits<char> >::get();
    return;
}

void _ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE() {
    pointer to std::__1::basic_istream<char, std::__1::char_traits<char> >::seekg();
    return;
}

void _ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv() {
    pointer to std::__1::basic_istream<char, std::__1::char_traits<char> >::tellg();
    return;
}

void _ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE6sentryC1ERS3_b() {
    pointer to std::__1::basic_istream<char, std::__1::char_traits<char> >::sentry::sentry();
    return;
}

void _ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev() {
    pointer to std::__1::basic_istream<char, std::__1::char_traits<char> >::~basic_istream();
    return;
}

void _ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERi() {
    pointer to std::__1::basic_istream<char, std::__1::char_traits<char> >::operator>>();
    return;
}

void _ZNSt3__113basic_istreamIcNS_11char_traitsIcEEErsERm() {
    pointer to std::__1::basic_istream<char, std::__1::char_traits<char> >::operator>>();
    return;
}

void _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_() {
    pointer to std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry::sentry();
    return;
}

void _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev() {
    pointer to std::__1::basic_ostream<char, std::__1::char_traits<char> >::sentry::~sentry();
    return;
}

void _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev() {
    pointer to std::__1::basic_ostream<char, std::__1::char_traits<char> >::~basic_ostream();
    return;
}

void _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi() {
    pointer to std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
    return;
}

void _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm() {
    pointer to std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
    return;
}

void _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEt() {
    pointer to std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
    return;
}

void _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEy() {
    pointer to std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
    return;
}

void _ZNSt3__113basic_ostreamIwNS_11char_traitsIwEEE5writeEPKwl() {
    pointer to std::__1::basic_ostream<wchar_t, std::__1::char_traits<wchar_t> >::write();
    return;
}

void _ZNSt3__113random_deviceC1ERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE() {
    pointer to std::__1::random_device::random_device();
    return;
}

void _ZNSt3__113random_deviceD1Ev() {
    pointer to std::__1::random_device::~random_device();
    return;
}

void _ZNSt3__113random_deviceclEv() {
    pointer to std::__1::random_device::operator();
    return;
}

void _ZNSt3__114basic_iostreamIcNS_11char_traitsIcEEED2Ev() {
    pointer to std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
    return;
}

void _ZNSt3__114error_categoryD2Ev() {
    pointer to std::__1::error_category::~error_category();
    return;
}

void _ZNSt3__115__thread_structC1Ev() {
    pointer to std::__1::__thread_struct::__thread_struct();
    return;
}

void _ZNSt3__115__thread_structD1Ev() {
    pointer to std::__1::__thread_struct::~__thread_struct();
    return;
}

void _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEEC2Ev() {
    pointer to std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
    return;
}

void _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEED2Ev() {
    pointer to std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
    return;
}

void _ZNSt3__115recursive_mutex4lockEv() {
    pointer to std::__1::recursive_mutex::lock();
    return;
}

void _ZNSt3__115recursive_mutex6unlockEv() {
    pointer to std::__1::recursive_mutex::unlock();
    return;
}

void _ZNSt3__115recursive_mutexC1Ev() {
    pointer to std::__1::recursive_mutex::recursive_mutex();
    return;
}

void _ZNSt3__115recursive_mutexD1Ev() {
    pointer to std::__1::recursive_mutex::~recursive_mutex();
    return;
}

void _ZNSt3__115system_categoryEv() {
    pointer to std::__1::system_category();
    return;
}

void _ZNSt3__118condition_variable10notify_allEv() {
    pointer to std::__1::condition_variable::notify_all();
    return;
}

void _ZNSt3__118condition_variable10notify_oneEv() {
    pointer to std::__1::condition_variable::notify_one();
    return;
}

void _ZNSt3__118condition_variable15__do_timed_waitERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12system_clockENS5_8durationIxNS_5ratioILl1ELl1000000000EEEEEEE() {
    pointer to std::__1::condition_variable::__do_timed_wait();
    return;
}

void _ZNSt3__118condition_variable4waitERNS_11unique_lockINS_5mutexEEE() {
    pointer to std::__1::condition_variable::wait();
    return;
}

void _ZNSt3__119__shared_weak_count14__release_weakEv() {
    pointer to std::__1::__shared_weak_count::__release_weak();
    return;
}

void _ZNSt3__118condition_variableD1Ev() {
    pointer to std::__1::condition_variable::~condition_variable();
    return;
}

void _ZNSt3__119__shared_weak_count4lockEv() {
    pointer to std::__1::__shared_weak_count::lock();
    return;
}

void _ZNSt3__120__throw_system_errorEiPKc() {
    pointer to std::__1::__throw_system_error();
    return;
}

void _ZNSt3__119__thread_local_dataEv() {
    pointer to std::__1::__thread_local_data();
    return;
}

void _ZNSt3__119__shared_weak_countD2Ev() {
    pointer to std::__1::__shared_weak_count::~__shared_weak_count();
    return;
}

void _ZNSt3__15mutex6unlockEv() {
    pointer to std::__1::mutex::unlock();
    return;
}

void _ZNSt3__14stoiERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi() {
    pointer to std::__1::stoi();
    return;
}

void _ZNSt3__15mutex4lockEv() {
    mutex4lockEv_pt::_ZNSt3();
    return;
}

void _ZNSt3__15mutexD1Ev() {
    pointer to std::__1::mutex::~mutex();
    return;
}

void _ZNSt3__15stollERKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEPmi() {
    pointer to std::__1::stoll();
    return;
}

void _ZNSt3__16chrono12steady_clock3nowEv() {
    pointer to std::__1::chrono::steady_clock::now();
    return;
}

void _ZNSt3__16chrono12system_clock3nowEv() {
    pointer to std::__1::chrono::system_clock::now();
    return;
}

void _ZNSt3__16localeC1ERKS0_() {
    pointer to std::__1::locale::locale();
    return;
}

void _ZNSt3__16localeC1Ev() {
    pointer to std::__1::locale::locale();
    return;
}

void _ZNSt3__16localeD1Ev() {
    pointer to std::__1::locale::~locale();
    return;
}

void _ZNSt3__16thread4joinEv() {
    thread4joinEv_pt::_ZNSt3();
    return;
}

void _ZNSt3__16thread6detachEv() {
    pointer to std::__1::thread::detach();
    return;
}

void _ZNSt3__16threadD1Ev() {
    (*0x100e62000)();
    return;
}

void _ZNSt3__17codecvtIDsc11__mbstate_tED2Ev() {
    pointer to std::__1::codecvt<char16_t, char, __mbstate_t>::~codecvt();
    return;
}

void _ZNSt3__18ios_base4initEPv() {
    pointer to std::__1::ios_base::init();
    return;
}

void _ZNSt3__18ios_base5clearEj() {
    pointer to std::__1::ios_base::clear();
    return;
}

void _ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev() {
    pointer to std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    return;
}

void _ZNSt3__19to_stringEj() {
    pointer to std::__1::to_string();
    return;
}

void _ZNSt3__19to_stringEx() {
    pointer to std::__1::to_string();
    return;
}

void _ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> > std::__1::operator+<char, std::__1::char_traits<char>, std::__1::allocator<char> >();
    return;
}

void _ZNSt8bad_castC1Ev() {
    pointer to std::bad_cast::bad_cast();
    return;
}

void _ZNSt9exceptionD2Ev() {
    pointer to std::exception::~exception();
    return;
}

void _ZSt13get_terminatev() {
    pointer to std::get_terminate();
    return;
}

void _ZSt13set_terminatePFvvE() {
    pointer to std::set_terminate();
    return;
}

void _ZSt18uncaught_exceptionv() {
    pointer to std::uncaught_exception();
    return;
}

void _ZSt9terminatev() {
    pointer to std::terminate();
    return;
}

void _ZdaPv(void * this) {
    pointer to operator delete[](this);
    return;
}

void _ZdlPv(void * this) {
    pointer to operator delete(this);
    return;
}

void _Znam() {
    pointer to operator new[]();
    return;
}

void _Znwm() {
    pointer to operator new();
    return;
}

void _ZnwmRKSt9nothrow_t() {
    pointer to operator new();
    return;
}

void __assert_rtn(void * , void * , int , void * ) {
    ___assert_rtn_ptr(arg_0, arg_1, arg_2, arg_3);
    return;
}

void __cxa_allocate_exception() {
    ___cxa_allocate_exception_ptr();
    return;
}

void __cxa_atexit() {
    ___cxa_atexit_ptr();
    return;
}

void __cxa_bad_cast() {
    ___cxa_bad_cast_ptr();
    return;
}

void __cxa_current_exception_type() {
    ___cxa_current_exception_type_ptr();
    return;
}

void __cxa_begin_catch() {
    ___cxa_begin_catch_ptr();
    return;
}

void __cxa_demangle() {
    ___cxa_demangle_ptr();
    return;
}

void __cxa_guard_acquire() {
    ___cxa_guard_acquire_ptr();
    return;
}

void __cxa_guard_release() {
    ___cxa_guard_release_ptr();
    return;
}

void __cxa_rethrow() {
    ___cxa_rethrow_ptr();
    return;
}

void __cxa_throw() {
    ___cxa_throw_ptr();
    return;
}

void __dynamic_cast() {
    ___dynamic_cast_ptr();
    return;
}

void * __error() {
    r0 = ___error_ptr();
    return r0;
}

int __invert_f4(int ) {
    r0 = ___invert_f4_ptr(arg_0);
    return r0;
}

int __maskrune(int , unsigned long ) {
    r0 = ___maskrune_ptr(arg_0, arg_1);
    return r0;
}

void __memcpy_chk() {
    ___memcpy_chk_ptr();
    return;
}

void __memset_chk() {
    ___memset_chk_ptr();
    return;
}

void __sincos_stret(double ) {
    ___sincos_stret_ptr(arg_0);
    return;
}

void __sincosf_stret(float ) {
    ___sincosf_stret_ptr(arg_0);
    return;
}

int __snprintf_chk(void * , int , int , int , void * ) {
    r0 = ___snprintf_chk_ptr(arg_0, arg_1, arg_2, arg_3, arg_4);
    return r0;
}

int __sprintf_chk(void * , int , int , void * ) {
    r0 = ___sprintf_chk_ptr(arg_0, arg_1, arg_2, arg_3);
    return r0;
}

void __stack_chk_fail() {
    ___stack_chk_fail_ptr();
    return;
}

void __strcpy_chk() {
    ___strcpy_chk_ptr();
    return;
}

void __strncpy_chk() {
    ___strncpy_chk_ptr();
    return;
}

void * __xmlLastError() {
    r0 = ___xmlLastError_ptr();
    return r0;
}

int __tolower(int ) {
    r0 = ___tolower_ptr(arg_0);
    return r0;
}

void * _dyld_get_image_header(int image_index) {
    r0 = __dyld_get_image_header_ptr(image_index);
    return r0;
}

void * _dyld_get_image_name(int image_index) {
    r0 = __dyld_get_image_name_ptr(image_index);
    return r0;
}

int _dyld_get_image_vmaddr_slide(int image_index) {
    r0 = __dyld_get_image_vmaddr_slide_ptr(image_index);
    return r0;
}

int _dyld_image_count() {
    r0 = __dyld_image_count_ptr();
    return r0;
}

void _dyld_register_func_for_add_image(void * func) {
    __dyld_register_func_for_add_image_ptr(func);
    return;
}

void _dyld_register_func_for_remove_image(void * func) {
    __dyld_register_func_for_remove_image_ptr(func);
    return;
}

void abort() {
    _abort_ptr();
    return;
}

int accept(int socket, void * address, void * address_len) {
    r0 = _accept_ptr(socket, address, address_len);
    return r0;
}

float acosf(float x) {
    r0 = _acosf_ptr(x);
    return r0;
}

void alBufferData(int bid, int format, void * data, int size, int freq) {
    _alBufferData_ptr(bid, format, data, size, freq);
    return;
}

void alDeleteBuffers(int n, void * buffers) {
    _alDeleteBuffers_ptr(n, buffers);
    return;
}

void alDeleteSources(int n, void * sources) {
    _alDeleteSources_ptr(n, sources);
    return;
}

void alGenBuffers(int n, void * buffers) {
    _alGenBuffers_ptr(n, buffers);
    return;
}

void alGenSources(int n, void * sources) {
    _alGenSources_ptr(n, sources);
    return;
}

int alGetError() {
    r0 = _alGetError_ptr();
    return r0;
}

void alGetListenerf(int param, void * value) {
    _alGetListenerf_ptr(param, value);
    return;
}

void alGetSourcef(int sid, int param, void * value) {
    _alGetSourcef_ptr(sid, param, value);
    return;
}

void alGetSourcefv(int sid, int param, void * values) {
    _alGetSourcefv_ptr(sid, param, values);
    return;
}

void alListenerf(int param, int value) {
    _alListenerf_ptr(param, value);
    return;
}

void alGetSourcei(int sid, int param, void * value) {
    _alGetSourcei_ptr(sid, param, value);
    return;
}

void alSourcePause(int sid) {
    _alSourcePause_ptr(sid);
    return;
}

void alSourcePlay(int sid) {
    _alSourcePlay_ptr(sid);
    return;
}

void alSourceRewind(int sid) {
    _alSourceRewind_ptr(sid);
    return;
}

void alSourceStop(int sid) {
    _alSourceStop_ptr(sid);
    return;
}

void alSourcef(int sid, int param, int value) {
    _alSourcef_ptr(sid, param, value);
    return;
}

void alSourcefv(int sid, int param, void * values) {
    _alSourcefv_ptr(sid, param, values);
    return;
}

void alSourcei(int sid, int param, int value) {
    _alSourcei_ptr(sid, param, value);
    return;
}

int alcCloseDevice(void * device) {
    r0 = _alcCloseDevice_ptr(device);
    return r0;
}

void * alcCreateContext(void * device, void * attrlist) {
    r0 = _alcCreateContext_ptr(device, attrlist);
    return r0;
}

void alcDestroyContext(void * context) {
    _alcDestroyContext_ptr(context);
    return;
}

void * alcGetContextsDevice(void * context) {
    r0 = _alcGetContextsDevice_ptr(context);
    return r0;
}

void * alcGetCurrentContext() {
    r0 = _alcGetCurrentContext_ptr();
    return r0;
}

void * alcGetProcAddress(void * device, void * funcname) {
    r0 = _alcGetProcAddress_ptr(device, funcname);
    return r0;
}

int alcMakeContextCurrent(void * context) {
    r0 = _alcMakeContextCurrent_ptr(context);
    return r0;
}

void * alcOpenDevice(void * devicename) {
    r0 = _alcOpenDevice_ptr(devicename);
    return r0;
}

int arc4random() {
    r0 = _arc4random_ptr();
    return r0;
}

void arc4random_buf(void * buf, int nbytes) {
    _arc4random_buf_ptr(buf, nbytes);
    return;
}

float asinf(float ) {
    r0 = _asinf_ptr(arg_0);
    return r0;
}

int arc4random_uniform(int upper_bound) {
    r0 = _arc4random_uniform_ptr(upper_bound);
    return r0;
}

int asl_add_log_file(int asl, int descriptor) {
    r0 = _asl_add_log_file_ptr(asl, descriptor);
    return r0;
}

int asl_log(int asl, int msg, int level, void * format) {
    r0 = _asl_log_ptr(asl, msg, level, format);
    return r0;
}

void asl_free(int msg) {
    _asl_free_ptr(msg);
    return;
}

void * asl_get(int msg, void * key) {
    r0 = _asl_get_ptr(msg, key);
    return r0;
}

int asl_new(int type) {
    r0 = _asl_new_ptr(type);
    return r0;
}

int asl_open(void * ident, void * facility, int opts) {
    r0 = _asl_open_ptr(ident, facility, opts);
    return r0;
}

int asl_send(int asl, int msg) {
    r0 = _asl_send_ptr(asl, msg);
    return r0;
}

int asl_search(int asl, int msg) {
    r0 = _asl_search_ptr(asl, msg);
    return r0;
}

int asl_set(int msg, void * key, void * value) {
    r0 = _asl_set_ptr(msg, key, value);
    return r0;
}

int asl_set_filter(int asl, int filter) {
    r0 = _asl_set_filter_ptr(asl, filter);
    return r0;
}

int asl_set_query(int msg, void * key, void * value, int op) {
    r0 = _asl_set_query_ptr(msg, key, value, op);
    return r0;
}

void aslresponse_free(int r) {
    _aslresponse_free_ptr(r);
    return;
}

int aslresponse_next(int r) {
    r0 = _aslresponse_next_ptr(r);
    return r0;
}

int asprintf(void * ret, void * format) {
    r0 = _asprintf_ptr(ret, format);
    return r0;
}

double atan(double ) {
    r0 = _atan_ptr(arg_0);
    return r0;
}

double atan2(double , double ) {
    r0 = _atan2_ptr(arg_0, arg_1);
    return r0;
}

float atan2f(float , float ) {
    r0 = _atan2f_ptr(arg_0, arg_1);
    return r0;
}

int atoi(void * str) {
    r0 = _atoi_ptr(str);
    return r0;
}

long long atoll(void * str) {
    r0 = _atoll_ptr(str);
    return r0;
}

int backtrace(void * array, int size) {
    r0 = _backtrace_ptr(array, size);
    return r0;
}

int bind(int socket, void * address, int address_len) {
    r0 = _bind_ptr(socket, address, address_len);
    return r0;
}

void * bsearch(void * key, void * base, int nel, int width, void * )) {
    r0 = _bsearch_ptr(key, base, nel, width, ));
    return r0;
}

void * calloc(int count, int size) {
    r0 = _calloc_ptr(count, size);
    return r0;
}

void bzero(void * s, int n) {
    _bzero_ptr(s, n);
    return;
}

int class_addIvar(int cls, void * name, int size, int alignment, void * types) {
    r0 = _class_addIvar_ptr(cls, name, size, alignment, types);
    return r0;
}

int class_addMethod(int cls, int name, int imp, void * types) {
    r0 = _class_addMethod_ptr(cls, name, imp, types);
    return r0;
}

int class_addProperty(int cls, void * name, void * attributes, unsigned int attributeCount) {
    r0 = _class_addProperty_ptr(cls, name, attributes, attributeCount);
    return r0;
}

void * class_copyIvarList(int cls, void * outCount) {
    r0 = _class_copyIvarList_ptr(cls, outCount);
    return r0;
}

void * class_copyMethodList(int cls, void * outCount) {
    r0 = _class_copyMethodList_ptr(cls, outCount);
    return r0;
}

int class_getClassMethod(int cls, int name) {
    r0 = _class_getClassMethod_ptr(cls, name);
    return r0;
}

void * class_copyPropertyList(int cls, void * outCount) {
    r0 = _class_copyPropertyList_ptr(cls, outCount);
    return r0;
}

int class_getInstanceMethod(int cls, int name) {
    r0 = _class_getInstanceMethod_ptr(cls, name);
    return r0;
}

int class_getInstanceSize(int cls) {
    r0 = _class_getInstanceSize_ptr(cls);
    return r0;
}

int class_getInstanceVariable(int cls, void * name) {
    r0 = _class_getInstanceVariable_ptr(cls, name);
    return r0;
}

void * class_getName(void * cls) {
    r0 = _class_getName_ptr(cls);
    return r0;
}

int class_getMethodImplementation(int cls, int name) {
    r0 = _class_getMethodImplementation_ptr(cls, name);
    return r0;
}

int class_getProperty(int cls, void * name) {
    r0 = _class_getProperty_ptr(cls, name);
    return r0;
}

int class_getSuperclass(int cls) {
    r0 = _class_getSuperclass_ptr(cls);
    return r0;
}

void * class_replaceMethod(void * cls, void * name, void * imp, void * types) {
    r0 = _class_replaceMethod_ptr(cls, name, imp, types);
    return r0;
}

int class_isMetaClass(int cls) {
    r0 = _class_isMetaClass_ptr(cls);
    return r0;
}

int close(int fildes) {
    r0 = _close_ptr(fildes);
    return r0;
}

int closedir(void * dirp) {
    r0 = _closedir_ptr(dirp);
    return r0;
}

int compressBound(int sourceLen) {
    r0 = _compressBound_ptr(sourceLen);
    return r0;
}

int connect(int socket, void * address, int address_len) {
    r0 = _connect_ptr(socket, address, address_len);
    return r0;
}

double cos(double ) {
    r0 = _cos_ptr(arg_0);
    return r0;
}

float cosf(float ) {
    r0 = _cosf_ptr(arg_0);
    return r0;
}

int crc32(int crc, void * buf, int len) {
    r0 = _crc32_ptr(crc, buf, len);
    return r0;
}

int deflateEnd(int strm) {
    r0 = _deflateEnd_ptr(strm);
    return r0;
}

int deflate(int strm, int flush) {
    r0 = _deflate_ptr(strm, flush);
    return r0;
}

int deflateInit2_(int strm, int level, int method, int windowBits, int memLevel, int strategy, void * version, int stream_size) {
    r0 = _deflateInit2__ptr(strm, level, method, windowBits, memLevel, strategy, version, stream_size);
    return r0;
}

int digittoint(int c) {
    r0 = _digittoint_ptr(c);
    return r0;
}

void dispatch_async(int queue, int block) {
    _dispatch_async_ptr(queue, block);
    return;
}

void dispatch_after(int when, int queue, int block) {
    _dispatch_after_ptr(when, queue, block);
    return;
}

void dispatch_barrier_async(int queue, int block) {
    _dispatch_barrier_async_ptr(queue, block);
    return;
}

void dispatch_barrier_async_f(int queue, void * context, int work) {
    _dispatch_barrier_async_f_ptr(queue, context, work);
    return;
}

void dispatch_barrier_sync(int queue, int block) {
    _dispatch_barrier_sync_ptr(queue, block);
    return;
}

int dispatch_data_apply(int data, int applier) {
    r0 = _dispatch_data_apply_ptr(data, applier);
    return r0;
}

int dispatch_data_create(void * buffer, int size, int queue, int destructor) {
    r0 = _dispatch_data_create_ptr(buffer, size, queue, destructor);
    return r0;
}

int dispatch_data_get_size(int data) {
    r0 = _dispatch_data_get_size_ptr(data);
    return r0;
}

int dispatch_get_current_queue() {
    r0 = _dispatch_get_current_queue_ptr();
    return r0;
}

int dispatch_get_global_queue(int priority, unsigned long flags) {
    r0 = _dispatch_get_global_queue_ptr(priority, flags);
    return r0;
}

void * dispatch_get_specific(void * key) {
    r0 = _dispatch_get_specific_ptr(key);
    return r0;
}

void dispatch_group_async(int group, int queue, int block) {
    _dispatch_group_async_ptr(group, queue, block);
    return;
}

int dispatch_group_create() {
    r0 = _dispatch_group_create_ptr();
    return r0;
}

void dispatch_group_enter(int group) {
    _dispatch_group_enter_ptr(group);
    return;
}

void dispatch_group_leave(int group) {
    _dispatch_group_leave_ptr(group);
    return;
}

void dispatch_group_notify(int group, int queue, int block) {
    _dispatch_group_notify_ptr(group, queue, block);
    return;
}

long dispatch_group_wait(int group, int timeout) {
    r0 = _dispatch_group_wait_ptr(group, timeout);
    return r0;
}

void dispatch_once(void * predicate, int block) {
    _dispatch_once_ptr(predicate, block);
    return;
}

void dispatch_once_f(void * predicate, void * context, int function) {
    _dispatch_once_f_ptr(predicate, context, function);
    return;
}

int dispatch_queue_attr_make_with_qos_class(int attr, int qos_class, int relative_priority) {
    r0 = _dispatch_queue_attr_make_with_qos_class_ptr(attr, qos_class, relative_priority);
    return r0;
}

int dispatch_queue_create(void * label, int attr) {
    r0 = _dispatch_queue_create_ptr(label, attr);
    return r0;
}

void * dispatch_queue_get_label(int queue) {
    r0 = _dispatch_queue_get_label_ptr(queue);
    return r0;
}

void dispatch_queue_set_specific(int queue, void * key, void * context, int destructor) {
    _dispatch_queue_set_specific_ptr(queue, key, context, destructor);
    return;
}

void dispatch_read(int fd, int length, int queue, void * handler) {
    _dispatch_read_ptr(fd, length, queue, handler);
    return;
}

void dispatch_release(int object) {
    _dispatch_release_ptr(object);
    return;
}

void dispatch_resume(int object) {
    _dispatch_resume_ptr(object);
    return;
}

int dispatch_semaphore_create(long count) {
    r0 = _dispatch_semaphore_create_ptr(count);
    return r0;
}

long dispatch_semaphore_signal(int semaphore) {
    r0 = _dispatch_semaphore_signal_ptr(semaphore);
    return r0;
}

long dispatch_semaphore_wait(int semaphore, int timeout) {
    r0 = _dispatch_semaphore_wait_ptr(semaphore, timeout);
    return r0;
}

void dispatch_set_target_queue(int object, int target) {
    _dispatch_set_target_queue_ptr(object, target);
    return;
}

void dispatch_source_cancel(int source) {
    _dispatch_source_cancel_ptr(source);
    return;
}

int dispatch_source_create(int type, int handle, unsigned long mask, int queue) {
    r0 = _dispatch_source_create_ptr(type, handle, mask, queue);
    return r0;
}

unsigned long dispatch_source_get_data(int source) {
    r0 = _dispatch_source_get_data_ptr(source);
    return r0;
}

void dispatch_source_set_cancel_handler(int source, int block) {
    _dispatch_source_set_cancel_handler_ptr(source, block);
    return;
}

void dispatch_source_set_event_handler(int source, int block) {
    _dispatch_source_set_event_handler_ptr(source, block);
    return;
}

void dispatch_source_set_timer(int source, int start, int interval, int leeway) {
    _dispatch_source_set_timer_ptr(source, start, interval, leeway);
    return;
}

long dispatch_source_testcancel(int source) {
    r0 = _dispatch_source_testcancel_ptr(source);
    return r0;
}

void dispatch_suspend(int object) {
    _dispatch_suspend_ptr(object);
    return;
}

void dispatch_sync(int queue, int block) {
    _dispatch_sync_ptr(queue, block);
    return;
}

int dispatch_time(int base, int offset) {
    r0 = _dispatch_time_ptr(base, offset);
    return r0;
}

int dispatch_walltime(void * base, int offset) {
    r0 = _dispatch_walltime_ptr(base, offset);
    return r0;
}

void dispatch_write(int fd, int data, int queue, void * handler) {
    _dispatch_write_ptr(fd, data, queue, handler);
    return;
}

int dladdr(void * addr, void * info) {
    r0 = _dladdr_ptr(addr, info);
    return r0;
}

int dlclose(void * handle) {
    r0 = _dlclose_ptr(handle);
    return r0;
}

void * dlopen(void * path, int mode) {
    r0 = _dlopen_ptr(path, mode);
    return r0;
}

void * dlsym(void * handle, void * symbol) {
    r0 = _dlsym_ptr(handle, symbol);
    return r0;
}

double drand48() {
    r0 = _drand48_ptr();
    return r0;
}

void exit(int status) {
    _exit_ptr(status);
    return;
}

double exp(double ) {
    r0 = _exp_ptr(arg_0);
    return r0;
}

double exp2(double ) {
    r0 = _exp2_ptr(arg_0);
    return r0;
}

float exp2f(float ) {
    r0 = _exp2f_ptr(arg_0);
    return r0;
}

float expf(float ) {
    r0 = _expf_ptr(arg_0);
    return r0;
}

int fclose(void * stream) {
    r0 = _fclose_ptr(stream);
    return r0;
}

int fcntl(int fildes, int cmd) {
    r0 = _fcntl_ptr(fildes, cmd);
    return r0;
}

int feof(void * stream) {
    r0 = _feof_ptr(stream);
    return r0;
}

int ferror(void * stream) {
    r0 = _ferror_ptr(stream);
    return r0;
}

int fflush(void * stream) {
    r0 = _fflush_ptr(stream);
    return r0;
}

int fgetc(void * stream) {
    r0 = _fgetc_ptr(stream);
    return r0;
}

double fmod(double , double ) {
    r0 = _fmod_ptr(arg_0, arg_1);
    return r0;
}

float fmodf(float , float ) {
    r0 = _fmodf_ptr(arg_0, arg_1);
    return r0;
}

void * fopen(void * filename, void * mode) {
    r0 = _fopen_ptr(filename, mode);
    return r0;
}

int fprintf(void * stream, void * format) {
    r0 = _fprintf_ptr(stream, format);
    return r0;
}

int fputc(int c, void * stream) {
    r0 = _fputc_ptr(c, stream);
    return r0;
}

int fread(void * ptr, int size, int nitems, void * stream) {
    r0 = _fread_ptr(ptr, size, nitems, stream);
    return r0;
}

void free(void * ptr) {
    _free_ptr(ptr);
    return;
}

void freeaddrinfo(void * ai) {
    _freeaddrinfo_ptr(ai);
    return;
}

void freeifaddrs(void * ifp) {
    _freeifaddrs_ptr(ifp);
    return;
}

int fseek(void * stream, long offset, int whence) {
    r0 = _fseek_ptr(stream, offset, whence);
    return r0;
}

int fseeko(void * stream, int offset, int whence) {
    r0 = _fseeko_ptr(stream, offset, whence);
    return r0;
}

int fstat(int fildes, void * buf) {
    r0 = _fstat_ptr(fildes, buf);
    return r0;
}

long ftell(void * stream) {
    r0 = _ftell_ptr(stream);
    return r0;
}

int ftello(void * stream) {
    r0 = _ftello_ptr(stream);
    return r0;
}

int fwrite(void * ptr, int size, int nitems, void * stream) {
    r0 = _fwrite_ptr(ptr, size, nitems, stream);
    return r0;
}

int getaddrinfo(void * hostname, void * servname, void * hints, void * res) {
    r0 = _getaddrinfo_ptr(hostname, servname, hints, res);
    return r0;
}

void * getenv(void * name) {
    r0 = _getenv_ptr(name);
    return r0;
}

int geteuid() {
    r0 = _geteuid_ptr();
    return r0;
}

void * gethostbyname(void * name) {
    r0 = _gethostbyname_ptr(name);
    return r0;
}

int getifaddrs(void * ifap) {
    r0 = _getifaddrs_ptr(ifap);
    return r0;
}

int getnameinfo(void * sa, int salen, void * host, int hostlen, void * serv, int servlen, int flags) {
    r0 = _getnameinfo_ptr(sa, salen, host, hostlen, serv, servlen, flags);
    return r0;
}

int getpid() {
    r0 = _getpid_ptr();
    return r0;
}

void * getsectbynamefromheader(void * mhp, void * segname, void * sectname) {
    r0 = _getsectbynamefromheader_ptr(mhp, segname, sectname);
    return r0;
}

void * getsectbynamefromheader_64(void * mhp, void * segname, void * sectname) {
    r0 = _getsectbynamefromheader_64_ptr(mhp, segname, sectname);
    return r0;
}

int getsockname(int socket, void * address, void * address_len) {
    r0 = _getsockname_ptr(socket, address, address_len);
    return r0;
}

int getuid() {
    r0 = _getuid_ptr();
    return r0;
}

int gettimeofday(void * tp, void * tzp) {
    r0 = _gettimeofday_ptr(tp, tzp);
    return r0;
}

int getxattr(void * path, void * name, void * value, int size, int position, int options) {
    r0 = _getxattr_ptr(path, name, value, size, position, options);
    return r0;
}

void glActiveTexture(int texture) {
    _glActiveTexture_ptr(texture);
    return;
}

void glBindAttribLocation(int program, int index, void * name) {
    _glBindAttribLocation_ptr(program, index, name);
    return;
}

void glAttachShader(int program, int shader) {
    _glAttachShader_ptr(program, shader);
    return;
}

void glBindBuffer(int target, int buffer) {
    _glBindBuffer_ptr(target, buffer);
    return;
}

void glBindFramebuffer(int target, int framebuffer) {
    _glBindFramebuffer_ptr(target, framebuffer);
    return;
}

void glBindRenderbuffer(int target, int renderbuffer) {
    _glBindRenderbuffer_ptr(target, renderbuffer);
    return;
}

void glBindTexture(int target, int texture) {
    _glBindTexture_ptr(target, texture);
    return;
}

void glBindVertexArrayOES() {
    _glBindVertexArrayOES_ptr();
    return;
}

void glBlendEquation(int mode) {
    _glBlendEquation_ptr(mode);
    return;
}

void glBlendFunc(int sfactor, int dfactor) {
    _glBlendFunc_ptr(sfactor, dfactor);
    return;
}

void glBufferSubData(int target, int offset, int size, void * data) {
    _glBufferSubData_ptr(target, offset, size, data);
    return;
}

void glBufferData(int target, int size, void * data, int usage) {
    _glBufferData_ptr(target, size, data, usage);
    return;
}

int glCheckFramebufferStatus(int target) {
    r0 = _glCheckFramebufferStatus_ptr(target);
    return r0;
}

void glClearDepthf(int d) {
    _glClearDepthf_ptr(d);
    return;
}

void glClear(int mask) {
    _glClear_ptr(mask);
    return;
}

void glClearColor(int red, int green, int blue, int alpha) {
    _glClearColor_ptr(red, green, blue, alpha);
    return;
}

void glClearStencil(int s) {
    _glClearStencil_ptr(s);
    return;
}

void glCompileShader(int shader) {
    _glCompileShader_ptr(shader);
    return;
}

void glColorMask(int red, int green, int blue, int alpha) {
    _glColorMask_ptr(red, green, blue, alpha);
    return;
}

int glCreateProgram() {
    r0 = _glCreateProgram_ptr();
    return r0;
}

int glCreateShader(int type) {
    r0 = _glCreateShader_ptr(type);
    return r0;
}

void glDeleteBuffers(int n, void * buffers) {
    _glDeleteBuffers_ptr(n, buffers);
    return;
}

void glDeleteFramebuffers(int n, void * framebuffers) {
    _glDeleteFramebuffers_ptr(n, framebuffers);
    return;
}

void glCullFace(int mode) {
    _glCullFace_ptr(mode);
    return;
}

void glDeleteRenderbuffers(int n, void * renderbuffers) {
    _glDeleteRenderbuffers_ptr(n, renderbuffers);
    return;
}

void glDeleteProgram(int program) {
    _glDeleteProgram_ptr(program);
    return;
}

void glDeleteTextures(int n, void * textures) {
    _glDeleteTextures_ptr(n, textures);
    return;
}

void glDepthFunc(int func) {
    _glDepthFunc_ptr(func);
    return;
}

void glDeleteShader(int shader) {
    _glDeleteShader_ptr(shader);
    return;
}

void glDeleteVertexArraysOES() {
    _glDeleteVertexArraysOES_ptr();
    return;
}

void glDisableVertexAttribArray(int index) {
    _glDisableVertexAttribArray_ptr(index);
    return;
}

void glDisable(int cap) {
    _glDisable_ptr(cap);
    return;
}

void glDepthMask(int flag) {
    _glDepthMask_ptr(flag);
    return;
}

void glDiscardFramebufferEXT() {
    _glDiscardFramebufferEXT_ptr();
    return;
}

void glDrawElements(int mode, int count, int type, void * indices) {
    _glDrawElements_ptr(mode, count, type, indices);
    return;
}

void glEnable(int cap) {
    _glEnable_ptr(cap);
    return;
}

void glDrawArrays(int mode, int first, int count) {
    _glDrawArrays_ptr(mode, first, count);
    return;
}

void glEnableVertexAttribArray(int index) {
    _glEnableVertexAttribArray_ptr(index);
    return;
}

void glFinish() {
    _glFinish_ptr();
    return;
}

void glFlush() {
    _glFlush_ptr();
    return;
}

void glFramebufferRenderbuffer(int target, int attachment, int renderbuffertarget, int renderbuffer) {
    _glFramebufferRenderbuffer_ptr(target, attachment, renderbuffertarget, renderbuffer);
    return;
}

void glFramebufferTexture2D(int target, int attachment, int textarget, int texture, int level) {
    _glFramebufferTexture2D_ptr(target, attachment, textarget, texture, level);
    return;
}

void glFrontFace(int mode) {
    _glFrontFace_ptr(mode);
    return;
}

void glGenBuffers(int n, void * buffers) {
    _glGenBuffers_ptr(n, buffers);
    return;
}

void glGenFramebuffers(int n, void * framebuffers) {
    _glGenFramebuffers_ptr(n, framebuffers);
    return;
}

void glGenRenderbuffers(int n, void * renderbuffers) {
    _glGenRenderbuffers_ptr(n, renderbuffers);
    return;
}

void glGenTextures(int n, void * textures) {
    _glGenTextures_ptr(n, textures);
    return;
}

void glGenVertexArraysOES() {
    _glGenVertexArraysOES_ptr();
    return;
}

void glGenerateMipmap(int target) {
    _glGenerateMipmap_ptr(target);
    return;
}

void glGetActiveAttrib(int program, int index, int bufSize, void * length, void * size, void * type, void * name) {
    _glGetActiveAttrib_ptr(program, index, bufSize, length, size, type, name);
    return;
}

int glGetAttribLocation(int program, void * name) {
    r0 = _glGetAttribLocation_ptr(program, name);
    return r0;
}

void glGetBooleanv(int pname, void * params) {
    _glGetBooleanv_ptr(pname, params);
    return;
}

void glGetActiveUniform(int program, int index, int bufSize, void * length, void * size, void * type, void * name) {
    _glGetActiveUniform_ptr(program, index, bufSize, length, size, type, name);
    return;
}

void glGetBufferParameteriv(int target, int pname, void * params) {
    _glGetBufferParameteriv_ptr(target, pname, params);
    return;
}

void glGetIntegerv(int pname, void * params) {
    _glGetIntegerv_ptr(pname, params);
    return;
}

int glGetError() {
    r0 = _glGetError_ptr();
    return r0;
}

void glGetFloatv(int pname, void * params) {
    _glGetFloatv_ptr(pname, params);
    return;
}

void glGetProgramInfoLog(int program, int bufSize, void * length, void * infoLog) {
    _glGetProgramInfoLog_ptr(program, bufSize, length, infoLog);
    return;
}

void glGetProgramiv(int program, int pname, void * params) {
    _glGetProgramiv_ptr(program, pname, params);
    return;
}

void glGetRenderbufferParameteriv(int target, int pname, void * params) {
    _glGetRenderbufferParameteriv_ptr(target, pname, params);
    return;
}

void glGetShaderInfoLog(int shader, int bufSize, void * length, void * infoLog) {
    _glGetShaderInfoLog_ptr(shader, bufSize, length, infoLog);
    return;
}

void glGetShaderSource(int shader, int bufSize, void * length, void * source) {
    _glGetShaderSource_ptr(shader, bufSize, length, source);
    return;
}

void * glGetString(int name) {
    r0 = _glGetString_ptr(name);
    return r0;
}

int glGetUniformLocation(int program, void * name) {
    r0 = _glGetUniformLocation_ptr(program, name);
    return r0;
}

void glGetShaderiv(int shader, int pname, void * params) {
    _glGetShaderiv_ptr(shader, pname, params);
    return;
}

int glIsEnabled(int cap) {
    r0 = _glIsEnabled_ptr(cap);
    return r0;
}

void glMapBufferOES() {
    _glMapBufferOES_ptr();
    return;
}

void glLineWidth(int width) {
    _glLineWidth_ptr(width);
    return;
}

void glLinkProgram(int program) {
    _glLinkProgram_ptr(program);
    return;
}

void glPixelStorei(int pname, int param) {
    _glPixelStorei_ptr(pname, param);
    return;
}

void glReadPixels(int x, int y, int width, int height, int format, int type, void * pixels) {
    _glReadPixels_ptr(x, y, width, height, format, type, pixels);
    return;
}

void glRenderbufferStorageMultisampleAPPLE() {
    _glRenderbufferStorageMultisampleAPPLE_ptr();
    return;
}

void glRenderbufferStorage(int target, int internalformat, int width, int height) {
    _glRenderbufferStorage_ptr(target, internalformat, width, height);
    return;
}

void glScissor(int x, int y, int width, int height) {
    _glScissor_ptr(x, y, width, height);
    return;
}

void glResolveMultisampleFramebufferAPPLE() {
    _glResolveMultisampleFramebufferAPPLE_ptr();
    return;
}

void glShaderSource(int shader, int count, void * string, void * length) {
    _glShaderSource_ptr(shader, count, string, length);
    return;
}

void glStencilFunc(int func, int ref, int mask) {
    _glStencilFunc_ptr(func, ref, mask);
    return;
}

void glStencilMask(int mask) {
    _glStencilMask_ptr(mask);
    return;
}

void glStencilOp(int fail, int zfail, int zpass) {
    _glStencilOp_ptr(fail, zfail, zpass);
    return;
}

void glTexImage2D(int target, int level, int internalformat, int width, int height, int border, int format, int type, void * pixels) {
    _glTexImage2D_ptr(target, level, internalformat, width, height, border, format, type, pixels);
    return;
}

void glTexParameteri(int target, int pname, int param) {
    _glTexParameteri_ptr(target, pname, param);
    return;
}

void glTexSubImage2D(int target, int level, int xoffset, int yoffset, int width, int height, int format, int type, void * pixels) {
    _glTexSubImage2D_ptr(target, level, xoffset, yoffset, width, height, format, type, pixels);
    return;
}

void glUniform1f(int location, int v0) {
    _glUniform1f_ptr(location, v0);
    return;
}

void glUniform1i(int location, int v0) {
    _glUniform1i_ptr(location, v0);
    return;
}

void glUniform2f(int location, int v0, int v1) {
    _glUniform2f_ptr(location, v0, v1);
    return;
}

void glUniform2fv(int location, int count, void * value) {
    _glUniform2fv_ptr(location, count, value);
    return;
}

void glUniform3f(int location, int v0, int v1, int v2) {
    _glUniform3f_ptr(location, v0, v1, v2);
    return;
}

void glUniform3fv(int location, int count, void * value) {
    _glUniform3fv_ptr(location, count, value);
    return;
}

void glUniform4f(int location, int v0, int v1, int v2, int v3) {
    _glUniform4f_ptr(location, v0, v1, v2, v3);
    return;
}

void glUniformMatrix4fv(int location, int count, int transpose, void * value) {
    _glUniformMatrix4fv_ptr(location, count, transpose, value);
    return;
}

void glUniform4fv(int location, int count, void * value) {
    _glUniform4fv_ptr(location, count, value);
    return;
}

void glUnmapBufferOES() {
    _glUnmapBufferOES_ptr();
    return;
}

void glUseProgram(int program) {
    _glUseProgram_ptr(program);
    return;
}

void glViewport(int x, int y, int width, int height) {
    _glViewport_ptr(x, y, width, height);
    return;
}

void glVertexAttribPointer(int index, int size, int type, int normalized, int stride, void * pointer) {
    _glVertexAttribPointer_ptr(index, size, type, normalized, stride, pointer);
    return;
}

void * gmtime_r(void * clock, void * result) {
    r0 = _gmtime_r_ptr(clock, result);
    return r0;
}

int gzclose(int file) {
    r0 = _gzclose_ptr(file);
    return r0;
}

void * gzerror(int file, void * errnum) {
    r0 = _gzerror_ptr(file, errnum);
    return r0;
}

int gzopen(void * , void * ) {
    r0 = _gzopen_ptr(arg_0, arg_1);
    return r0;
}

int gzwrite(int file, int buf, unsigned int len) {
    r0 = _gzwrite_ptr(file, buf, len);
    return r0;
}

void * hash_create(int size) {
    r0 = _hash_create_ptr(size);
    return r0;
}

void * hash_search(void * table, void * key, void * datum, void * replace_func) {
    r0 = _hash_search_ptr(table, key, datum, replace_func);
    return r0;
}

int host_page_size(int , void * ) {
    r0 = _host_page_size_ptr(arg_0, arg_1);
    return r0;
}

int host_statistics(int host_priv, int flavor, int host_info_out, void * host_info_outCnt) {
    r0 = _host_statistics_ptr(host_priv, flavor, host_info_out, host_info_outCnt);
    return r0;
}

unsigned int if_nametoindex(void * ifname) {
    r0 = _if_nametoindex_ptr(ifname);
    return r0;
}

int ilogb(double ) {
    r0 = _ilogb_ptr(arg_0);
    return r0;
}

int imp_implementationWithBlock(int block) {
    r0 = _imp_implementationWithBlock_ptr(block);
    return r0;
}

void * inet_ntoa(void in) {
    r0 = _inet_ntoa_ptr(in);
    return r0;
}

void * inet_ntop(int af, void * src, void * dst, int size) {
    r0 = _inet_ntop_ptr(af, src, dst, size);
    return r0;
}

int inflate(int strm, int flush) {
    r0 = _inflate_ptr(strm, flush);
    return r0;
}

int inflateEnd(int strm) {
    r0 = _inflateEnd_ptr(strm);
    return r0;
}

int inflateInit2_(int strm, int windowBits, void * version, int stream_size) {
    r0 = _inflateInit2__ptr(strm, windowBits, version, stream_size);
    return r0;
}

int inflateInit_(int strm, void * version, int stream_size) {
    r0 = _inflateInit__ptr(strm, version, stream_size);
    return r0;
}

int isxdigit(int c) {
    r0 = _isxdigit_ptr(c);
    return r0;
}

int ivar_getOffset(int v) {
    r0 = _ivar_getOffset_ptr(v);
    return r0;
}

void * ivar_getTypeEncoding(int v) {
    r0 = _ivar_getTypeEncoding_ptr(v);
    return r0;
}

double ldexp(double , int ) {
    r0 = _ldexp_ptr(arg_0, arg_1);
    return r0;
}

int listen(int socket, int backlog) {
    r0 = _listen_ptr(socket, backlog);
    return r0;
}

long long llrint(double ) {
    r0 = _llrint_ptr(arg_0);
    return r0;
}

long long llround(double ) {
    r0 = _llround_ptr(arg_0);
    return r0;
}

void * localtime_r(void * clock, void * result) {
    r0 = _localtime_r_ptr(clock, result);
    return r0;
}

double log(double ) {
    r0 = _log_ptr(arg_0);
    return r0;
}

double log10(double ) {
    r0 = _log10_ptr(arg_0);
    return r0;
}

float logf(float ) {
    r0 = _logf_ptr(arg_0);
    return r0;
}

long lrint(double ) {
    r0 = _lrint_ptr(arg_0);
    return r0;
}

long lround(double ) {
    r0 = _lround_ptr(arg_0);
    return r0;
}

long lroundf(float ) {
    r0 = _lroundf_ptr(arg_0);
    return r0;
}

int lseek(int fildes, int offset, int whence) {
    r0 = _lseek_ptr(fildes, offset, whence);
    return r0;
}

int lstat(void * path, void * buf) {
    r0 = _lstat_ptr(path, buf);
    return r0;
}

void * mach_error_string(int error_value) {
    r0 = _mach_error_string_ptr(error_value);
    return r0;
}

int mach_absolute_time() {
    r0 = _mach_absolute_time_ptr();
    return r0;
}

int mach_host_self() {
    r0 = _mach_host_self_ptr();
    return r0;
}

int mach_msg(void * msg, int option, int send_size, int rcv_size, int rcv_name, int timeout, int notify) {
    r0 = _mach_msg_ptr(msg, option, send_size, rcv_size, rcv_name, timeout, notify);
    return r0;
}

int mach_port_allocate(int task, int right, void * name) {
    r0 = _mach_port_allocate_ptr(task, right, name);
    return r0;
}

int mach_port_deallocate(int task, int name) {
    r0 = _mach_port_deallocate_ptr(task, name);
    return r0;
}

int mach_port_insert_right(int task, int name, int poly, int polyPoly) {
    r0 = _mach_port_insert_right_ptr(task, name, poly, polyPoly);
    return r0;
}

int mach_thread_self() {
    r0 = _mach_thread_self_ptr();
    return r0;
}

int mach_timebase_info(int info) {
    r0 = _mach_timebase_info_ptr(info);
    return r0;
}

void * malloc(int size) {
    r0 = _malloc_ptr(size);
    return r0;
}

void * memchr(void * s, int c, int n) {
    r0 = _memchr_ptr(s, c, n);
    return r0;
}

int memcmp(void * s1, void * s2, int n) {
    r0 = _memcmp_ptr(s1, s2, n);
    return r0;
}

void * memcpy(void * dst, void * src, int n) {
    r0 = _memcpy_ptr(dst, src, n);
    return r0;
}

void * memmove(void * dst, void * src, int len) {
    r0 = _memmove_ptr(dst, src, len);
    return r0;
}

void * memset(void * b, int c, int len) {
    r0 = _memset_ptr(b, c, len);
    return r0;
}

void method_exchangeImplementations(int m1, int m2) {
    _method_exchangeImplementations_ptr(m1, m2);
    return;
}

int method_getImplementation(int m) {
    r0 = _method_getImplementation_ptr(m);
    return r0;
}

int method_getName(int m) {
    r0 = _method_getName_ptr(m);
    return r0;
}

void * method_getTypeEncoding(int m) {
    r0 = _method_getTypeEncoding_ptr(m);
    return r0;
}

int method_setImplementation(int m, int imp) {
    r0 = _method_setImplementation_ptr(m, imp);
    return r0;
}

int mkdir(void * path, int mode) {
    r0 = _mkdir_ptr(path, mode);
    return r0;
}

int mktime(void * timeptr) {
    r0 = _mktime_ptr(timeptr);
    return r0;
}

void * mmap(void * addr, int len, int prot, int flags, int fildes, int off) {
    r0 = _mmap_ptr(addr, len, prot, flags, fildes, off);
    return r0;
}

double modf(double , void * ) {
    r0 = _modf_ptr(arg_0, arg_1);
    return r0;
}

float modff(float , void * ) {
    r0 = _modff_ptr(arg_0, arg_1);
    return r0;
}

double nextafter(double x, double y) {
    r0 = _nextafter_ptr(x, y);
    return r0;
}

int mprotect(void * addr, int len, int prot) {
    r0 = _mprotect_ptr(addr, len, prot);
    return r0;
}

int munmap(void * addr, int len) {
    r0 = _munmap_ptr(addr, len);
    return r0;
}

int notify_cancel(int token) {
    r0 = _notify_cancel_ptr(token);
    return r0;
}

int notify_register_dispatch(void * name, void * out_token, int queue, int handler) {
    r0 = _notify_register_dispatch_ptr(name, out_token, queue, handler);
    return r0;
}

int objc_allocateClassPair(int superclass, void * name, int extraBytes) {
    r0 = _objc_allocateClassPair_ptr(superclass, name, extraBytes);
    return r0;
}

void objc_alloc() {
    _objc_alloc_ptr();
    return;
}

void * objc_autorelease(void * instance) {
    r0 = _objc_autorelease_ptr(instance);
    return r0;
}

void * objc_autoreleasePoolPush() {
    r0 = _objc_autoreleasePoolPush_ptr();
    return r0;
}

void objc_autoreleasePoolPop(void * pool) {
    _objc_autoreleasePoolPop_ptr(pool);
    return;
}

void * objc_autoreleaseReturnValue(void * instance) {
    r0 = _objc_autoreleaseReturnValue_ptr(instance);
    return r0;
}

int objc_constructInstance(int cls, void * bytes) {
    r0 = _objc_constructInstance_ptr(cls, bytes);
    return r0;
}

void * objc_copyClassNamesForImage(void * image, void * outCount) {
    r0 = _objc_copyClassNamesForImage_ptr(image, outCount);
    return r0;
}

void objc_copyStruct(void * dest, void * src, unsigned int size, int atomic, int hasStrong) {
    _objc_copyStruct_ptr(dest, src, size, atomic, hasStrong);
    return;
}

void * objc_copyImageNames(void * outCount) {
    r0 = _objc_copyImageNames_ptr(outCount);
    return r0;
}

void objc_copyWeak(void * dest, void * src) {
    _objc_copyWeak_ptr(dest, src);
    return;
}

void objc_destroyWeak(void * instance) {
    _objc_destroyWeak_ptr(instance);
    return;
}

void objc_disposeClassPair(int cls) {
    _objc_disposeClassPair_ptr(cls);
    return;
}

void objc_end_catch() {
    _objc_end_catch_ptr();
    return;
}

void objc_enumerationMutation(int obj) {
    _objc_enumerationMutation_ptr(obj);
    return;
}

void objc_exception_rethrow() {
    _objc_exception_rethrow_ptr();
    return;
}

void objc_exception_throw(int exception) {
    _objc_exception_throw_ptr(exception);
    return;
}

int objc_getAssociatedObject(int object, void * key) {
    r0 = _objc_getAssociatedObject_ptr(object, key);
    return r0;
}

void * objc_getClass(void * name) {
    r0 = _objc_getClass_ptr(name);
    return r0;
}

int objc_getClassList(void * buffer, int bufferCount) {
    r0 = _objc_getClassList_ptr(buffer, bufferCount);
    return r0;
}

void * objc_getMetaClass(void * name) {
    r0 = _objc_getMetaClass_ptr(name);
    return r0;
}

void * objc_getProperty(void * instance, void * selector, unsigned int offset, int atomic) {
    r0 = _objc_getProperty_ptr(instance, selector, offset, atomic);
    return r0;
}

void * objc_getProtocol(void * name) {
    r0 = _objc_getProtocol_ptr(name);
    return r0;
}

void * objc_initWeak(void * addr, void * value) {
    r0 = _objc_initWeak_ptr(addr, value);
    return r0;
}

int objc_getRequiredClass(void * name) {
    r0 = _objc_getRequiredClass_ptr(name);
    return r0;
}

void objc_initializeClassPair() {
    _objc_initializeClassPair_ptr();
    return;
}

void * objc_lookUpClass(void * name) {
    r0 = _objc_lookUpClass_ptr(name);
    return r0;
}

void * objc_loadWeakRetained(void * instance) {
    r0 = _objc_loadWeakRetained_ptr(instance);
    return r0;
}

void objc_moveWeak(void * dest, void * src) {
    _objc_moveWeak_ptr(dest, src);
    return;
}

void * objc_msgSend(void * instance, void * selector) {
    r0 = _objc_msgSend_ptr(instance, selector);
    return r0;
}

void * objc_msgSendSuper2(void * super, void * selector) {
    r0 = _objc_msgSendSuper2_ptr(super, selector);
    return r0;
}

void objc_registerClassPair(int cls) {
    _objc_registerClassPair_ptr(cls);
    return;
}

void objc_release(void * instance) {
    _objc_release_ptr(instance);
    return;
}

void * objc_retain(void * instance) {
    r0 = _objc_retain_ptr(instance);
    return r0;
}

void * objc_retainAutorelease(void * instance) {
    r0 = _objc_retainAutorelease_ptr(instance);
    return r0;
}

void * objc_retainAutoreleaseReturnValue(void * instance) {
    r0 = _objc_retainAutoreleaseReturnValue_ptr(instance);
    return r0;
}

void * objc_retainAutoreleasedReturnValue(void * instance) {
    r0 = _objc_retainAutoreleasedReturnValue_ptr(instance);
    return r0;
}

void * objc_retainBlock(void * instance) {
    r0 = _objc_retainBlock_ptr(instance);
    return r0;
}

void objc_setAssociatedObject(int object, void * key, int value, int policy) {
    _objc_setAssociatedObject_ptr(object, key, value, policy);
    return;
}

void objc_setProperty_atomic() {
    _objc_setProperty_atomic_ptr();
    return;
}

void objc_setProperty_atomic_copy() {
    _objc_setProperty_atomic_copy_ptr();
    return;
}

void objc_setProperty_nonatomic() {
    _objc_setProperty_nonatomic_ptr();
    return;
}

void objc_setProperty_nonatomic_copy() {
    _objc_setProperty_nonatomic_copy_ptr();
    return;
}

void * objc_storeStrong(void * addr, void * value) {
    r0 = _objc_storeStrong_ptr(addr, value);
    return r0;
}

void * objc_storeWeak(void * addr, void * value) {
    r0 = _objc_storeWeak_ptr(addr, value);
    return r0;
}

int objc_sync_exit(int obj) {
    r0 = _objc_sync_exit_ptr(obj);
    return r0;
}

int objc_sync_enter(int obj) {
    r0 = _objc_sync_enter_ptr(obj);
    return r0;
}

void objc_unsafeClaimAutoreleasedReturnValue() {
    _objc_unsafeClaimAutoreleasedReturnValue_ptr();
    return;
}

void * object_getClass(void * object) {
    r0 = _object_getClass_ptr(object);
    return r0;
}

int object_getIvar(int obj, int ivar) {
    r0 = _object_getIvar_ptr(obj, ivar);
    return r0;
}

int object_setClass(int obj, int cls) {
    r0 = _object_setClass_ptr(obj, cls);
    return r0;
}

int open_dprotected_np(void * , int , int , int ) {
    r0 = _open_dprotected_np_ptr(arg_0, arg_1, arg_2, arg_3);
    return r0;
}

int open(void * path, int oflag) {
    r0 = _open_ptr(path, oflag);
    return r0;
}

void * opendir(void * dirname) {
    r0 = _opendir_ptr(dirname);
    return r0;
}

double pow(double , double ) {
    r0 = _pow_ptr(arg_0, arg_1);
    return r0;
}

float powf(float , float ) {
    r0 = _powf_ptr(arg_0, arg_1);
    return r0;
}

int printf(void * format) {
    r0 = _printf_ptr(format);
    return r0;
}

void * property_copyAttributeList(int property, void * outCount) {
    r0 = _property_copyAttributeList_ptr(property, outCount);
    return r0;
}

void * property_copyAttributeValue(int property, void * attributeName) {
    r0 = _property_copyAttributeValue_ptr(property, attributeName);
    return r0;
}

void * property_getName(int property) {
    r0 = _property_getName_ptr(property);
    return r0;
}

int pthread_attr_destroy(void * attr) {
    r0 = _pthread_attr_destroy_ptr(attr);
    return r0;
}

void protocol_getMethodDescription(int p, int aSel, int isRequiredMethod, int isInstanceMethod) {
    _protocol_getMethodDescription_ptr(p, aSel, isRequiredMethod, isInstanceMethod);
    return;
}

int pthread_attr_setdetachstate(void * attr, int detachstate) {
    r0 = _pthread_attr_setdetachstate_ptr(attr, detachstate);
    return r0;
}

int pthread_attr_init(void * attr) {
    r0 = _pthread_attr_init_ptr(attr);
    return r0;
}

int pthread_attr_setstack(void * , void * , int ) {
    r0 = _pthread_attr_setstack_ptr(arg_0, arg_1, arg_2);
    return r0;
}

int pthread_create(void * thread, void * attr, void * start_routine, void * arg) {
    r0 = _pthread_create_ptr(thread, attr, start_routine, arg);
    return r0;
}

int pthread_equal(int t1, int t2) {
    r0 = _pthread_equal_ptr(t1, t2);
    return r0;
}

int pthread_getname_np(int , void * , int ) {
    r0 = _pthread_getname_np_ptr(arg_0, arg_1, arg_2);
    return r0;
}

int pthread_mach_thread_np(int ) {
    r0 = _pthread_mach_thread_np_ptr(arg_0);
    return r0;
}

int pthread_from_mach_thread_np(int ) {
    r0 = _pthread_from_mach_thread_np_ptr(arg_0);
    return r0;
}

int pthread_mutex_unlock(void * mutex) {
    r0 = _pthread_mutex_unlock_ptr(mutex);
    return r0;
}

int pthread_mutex_destroy(void * mutex) {
    r0 = _pthread_mutex_destroy_ptr(mutex);
    return r0;
}

int pthread_mutex_lock(void * mutex) {
    r0 = _pthread_mutex_lock_ptr(mutex);
    return r0;
}

int pthread_mutex_init(void * mutex, void * attr) {
    r0 = _pthread_mutex_init_ptr(mutex, attr);
    return r0;
}

int pthread_self() {
    r0 = _pthread_self_ptr();
    return r0;
}

int pthread_setname_np(void * ) {
    r0 = _pthread_setname_np_ptr(arg_0);
    return r0;
}

int pthread_once(void * once_control, void * init_routine) {
    r0 = _pthread_once_ptr(once_control, init_routine);
    return r0;
}

int pthread_setspecific(int key, void * value) {
    r0 = _pthread_setspecific_ptr(key, value);
    return r0;
}

int puts(void * s) {
    r0 = _puts_ptr(s);
    return r0;
}

int pthread_threadid_np(int , void * ) {
    r0 = _pthread_threadid_np_ptr(arg_0, arg_1);
    return r0;
}

int putchar(int c) {
    r0 = _putchar_ptr(c);
    return r0;
}

void qsort(void * base, int nel, int width, void * compar) {
    _qsort_ptr(base, nel, width, compar);
    return;
}

int raise(int sig) {
    r0 = _raise_ptr(sig);
    return r0;
}

int rand() {
    r0 = _rand_ptr();
    return r0;
}

long random() {
    r0 = _random_ptr();
    return r0;
}

int read(int fildes, void * buf, int nbyte) {
    r0 = _read_ptr(fildes, buf, nbyte);
    return r0;
}

void * readdir(void * dirp) {
    r0 = _readdir_ptr(dirp);
    return r0;
}

void * realloc(void * ptr, int size) {
    r0 = _realloc_ptr(ptr, size);
    return r0;
}

int recvfrom(int socket, void * buffer, int length, int flags, void * address, void * address_len) {
    r0 = _recvfrom_ptr(socket, buffer, length, flags, address, address_len);
    return r0;
}

int regcomp(void * preg, void * pattern, int cflags) {
    r0 = _regcomp_ptr(preg, pattern, cflags);
    return r0;
}

int regexec(void * preg, void * string, int nmatch, int pmatch, int eflags) {
    r0 = _regexec_ptr(preg, string, nmatch, pmatch, eflags);
    return r0;
}

int remove(void * path) {
    r0 = _remove_ptr(path);
    return r0;
}

int removexattr(void * path, void * name, int options) {
    r0 = _removexattr_ptr(path, name, options);
    return r0;
}

int rename(void * old, void * new) {
    r0 = _rename_ptr(old, new);
    return r0;
}

void rewind(void * stream) {
    _rewind_ptr(stream);
    return;
}

int rmdir(void * path) {
    r0 = _rmdir_ptr(path);
    return r0;
}

void * sel_getName(int sel) {
    r0 = _sel_getName_ptr(sel);
    return r0;
}

int sel_getUid(void * str) {
    r0 = _sel_getUid_ptr(str);
    return r0;
}

void * sel_registerName(void * str) {
    r0 = _sel_registerName_ptr(str);
    return r0;
}

int sendto(int socket, void * buffer, int length, int flags, void * dest_addr, int dest_len) {
    r0 = _sendto_ptr(socket, buffer, length, flags, dest_addr, dest_len);
    return r0;
}

void * setlocale(int category, void * locale) {
    r0 = _setlocale_ptr(category, locale);
    return r0;
}

int setsockopt(int socket, int level, int option_name, void * option_value, int option_len) {
    r0 = _setsockopt_ptr(socket, level, option_name, option_value, option_len);
    return r0;
}

int setxattr(void * path, void * name, void * value, int size, int position, int options) {
    r0 = _setxattr_ptr(path, name, value, size, position, options);
    return r0;
}

int sigaction(int sig, void * act, void * oact) {
    r0 = _sigaction_ptr(sig, act, oact);
    return r0;
}

int sigaltstack(void * ss, void * oss) {
    r0 = _sigaltstack_ptr(ss, oss);
    return r0;
}

void * signal(int sig, void * func) {
    r0 = _signal_ptr(sig, func);
    return r0;
}

int sigprocmask(int how, void * set, void * oset) {
    r0 = _sigprocmask_ptr(how, set, oset);
    return r0;
}

double sin(double ) {
    r0 = _sin_ptr(arg_0);
    return r0;
}

float sinf(float ) {
    r0 = _sinf_ptr(arg_0);
    return r0;
}

int snprintf(void * str, int size, void * format) {
    r0 = _snprintf_ptr(str, size, format);
    return r0;
}

int socket(int domain, int type, int protocol) {
    r0 = _socket_ptr(domain, type, protocol);
    return r0;
}

int sprintf(void * str, void * format) {
    r0 = _sprintf_ptr(str, format);
    return r0;
}

int sqlite3_bind_blob(void * , int , void * , int n, void * ) {
    r0 = _sqlite3_bind_blob_ptr(arg_0, arg_1, arg_2, n, arg_4);
    return r0;
}

int sqlite3_bind_double(void * , int , double ) {
    r0 = _sqlite3_bind_double_ptr(arg_0, arg_1, arg_2);
    return r0;
}

int sqlite3_bind_int64(void * , int , int ) {
    r0 = _sqlite3_bind_int64_ptr(arg_0, arg_1, arg_2);
    return r0;
}

int sqlite3_bind_null(void * , int ) {
    r0 = _sqlite3_bind_null_ptr(arg_0, arg_1);
    return r0;
}

int sqlite3_bind_text(void * , int , void * , int n, void * ) {
    r0 = _sqlite3_bind_text_ptr(arg_0, arg_1, arg_2, n, arg_4);
    return r0;
}

int sqlite3_changes(void * ) {
    r0 = _sqlite3_changes_ptr(arg_0);
    return r0;
}

int sqlite3_clear_bindings(void * ) {
    r0 = _sqlite3_clear_bindings_ptr(arg_0);
    return r0;
}

int sqlite3_close(void * ) {
    r0 = _sqlite3_close_ptr(arg_0);
    return r0;
}

int sqlite3_column_bytes(void * , int iCol) {
    r0 = (*0x100e63000)(arg_0, iCol);
    return r0;
}

void * sqlite3_column_blob(void * , int iCol) {
    r0 = _sqlite3_column_blob_ptr(arg_0, iCol);
    return r0;
}

int sqlite3_column_count(void * pStmt) {
    r0 = _sqlite3_column_count_ptr(pStmt);
    return r0;
}

double sqlite3_column_double(void * , int iCol) {
    r0 = _sqlite3_column_double_ptr(arg_0, iCol);
    return r0;
}

int sqlite3_column_int(void * , int iCol) {
    r0 = _sqlite3_column_int_ptr(arg_0, iCol);
    return r0;
}

int sqlite3_column_int64(void * , int iCol) {
    r0 = _sqlite3_column_int64_ptr(arg_0, iCol);
    return r0;
}

void * sqlite3_column_name(void * , int N) {
    r0 = _sqlite3_column_name_ptr(arg_0, N);
    return r0;
}

void * sqlite3_column_text(void * , int iCol) {
    r0 = _sqlite3_column_text_ptr(arg_0, iCol);
    return r0;
}

int sqlite3_column_type(void * , int iCol) {
    r0 = _sqlite3_column_type_ptr(arg_0, iCol);
    return r0;
}

int sqlite3_errcode(void * db) {
    r0 = _sqlite3_errcode_ptr(db);
    return r0;
}

void * sqlite3_errmsg(void * ) {
    r0 = _sqlite3_errmsg_ptr(arg_0);
    return r0;
}

int sqlite3_exec(void * , void * sql, void * callback, void * , void * errmsg) {
    r0 = _sqlite3_exec_ptr(arg_0, sql, callback, arg_3, errmsg);
    return r0;
}

int sqlite3_open(void * filename, void * ppDb) {
    r0 = _sqlite3_open_ptr(filename, ppDb);
    return r0;
}

int sqlite3_finalize(void * pStmt) {
    r0 = _sqlite3_finalize_ptr(pStmt);
    return r0;
}

int sqlite3_open_v2(void * filename, void * ppDb, int flags, void * zVfs) {
    r0 = _sqlite3_open_v2_ptr(filename, ppDb, flags, zVfs);
    return r0;
}

int sqlite3_prepare_v2(void * db, void * zSql, int nByte, void * ppStmt, void * pzTail) {
    r0 = _sqlite3_prepare_v2_ptr(db, zSql, nByte, ppStmt, pzTail);
    return r0;
}

int sqlite3_step(void * ) {
    r0 = _sqlite3_step_ptr(arg_0);
    return r0;
}

int sqlite3_reset(void * pStmt) {
    r0 = _sqlite3_reset_ptr(pStmt);
    return r0;
}

void srand(unsigned int seed) {
    _srand_ptr(seed);
    return;
}

void srand48(long seedval) {
    _srand48_ptr(seedval);
    return;
}

int sscanf(void * s, void * format) {
    r0 = _sscanf_ptr(s, format);
    return r0;
}

int stat(void * path, void * buf) {
    r0 = _stat_ptr(path, buf);
    return r0;
}

int statfs(void * path, void * buf) {
    r0 = _statfs_ptr(path, buf);
    return r0;
}

int strcasecmp(void * s1, void * s2) {
    r0 = _strcasecmp_ptr(s1, s2);
    return r0;
}

void * strcasestr(void * s1, void * s2) {
    r0 = _strcasestr_ptr(s1, s2);
    return r0;
}

void * strchr(void * s, int c) {
    r0 = _strchr_ptr(s, c);
    return r0;
}

int strcmp(void * s1, void * s2) {
    r0 = _strcmp_ptr(s1, s2);
    return r0;
}

void * strcpy(void * dst, void * src) {
    r0 = _strcpy_ptr(dst, src);
    return r0;
}

void * strdup(void * s1) {
    r0 = _strdup_ptr(s1);
    return r0;
}

int strftime(void * s, int maxsize, void * format, void * timeptr) {
    r0 = _strftime_ptr(s, maxsize, format, timeptr);
    return r0;
}

void * strerror(int errnum) {
    r0 = _strerror_ptr(errnum);
    return r0;
}

void * strncat(void * s1, void * s2, int n) {
    r0 = _strncat_ptr(s1, s2, n);
    return r0;
}

int strncmp(void * s1, void * s2, int n) {
    r0 = _strncmp_ptr(s1, s2, n);
    return r0;
}

void * strncpy(void * dst, void * src, int n) {
    r0 = _strncpy_ptr(dst, src, n);
    return r0;
}

double strtod(void * nptr, void * endptr) {
    r0 = _strtod_ptr(nptr, endptr);
    return r0;
}

void * strrchr(void * s, int c) {
    r0 = _strrchr_ptr(s, c);
    return r0;
}

void * strstr(void * s1, void * s2) {
    r0 = _strstr_ptr(s1, s2);
    return r0;
}

long strtol(void * str, void * endptr, int base) {
    r0 = _strtol_ptr(str, endptr, base);
    return r0;
}

void * strtok_r(void * str, void * sep, void * lasts) {
    r0 = _strtok_r_ptr(str, sep, lasts);
    return r0;
}

float strtof(void * nptr, void * endptr) {
    r0 = _strtof_ptr(nptr, endptr);
    return r0;
}

long long strtoll(void * str, void * endptr, int base) {
    r0 = _strtoll_ptr(str, endptr, base);
    return r0;
}

unsigned long strtoul(void * str, void * endptr, int base) {
    r0 = _strtoul_ptr(str, endptr, base);
    return r0;
}

unsigned long long strtoull(void * str, void * endptr, int base) {
    r0 = _strtoull_ptr(str, endptr, base);
    return r0;
}

long sysconf(int name) {
    r0 = _sysconf_ptr(name);
    return r0;
}

int sysctl(void * name, int namelen, void * oldp, void * oldlenp, void * newp, int newlen) {
    r0 = _sysctl_ptr(name, namelen, oldp, oldlenp, newp, newlen);
    return r0;
}

int sysctlbyname(void * name, void * oldp, void * oldlenp, void * newp, int newlen) {
    r0 = _sysctlbyname_ptr(name, oldp, oldlenp, newp, newlen);
    return r0;
}

void syslog(int priority, void * message) {
    _syslog_ptr(priority, message);
    return;
}

int system(void * command) {
    r0 = _system_ptr(command);
    return r0;
}

float tanf(float ) {
    r0 = _tanf_ptr(arg_0);
    return r0;
}

int task_get_exception_ports(int task, int exception_mask, int masks, void * masksCnt, int old_handlers, int old_behaviors, int old_flavors) {
    r0 = _task_get_exception_ports_ptr(task, exception_mask, masks, masksCnt, old_handlers, old_behaviors, old_flavors);
    return r0;
}

int task_info(int target_task, int flavor, int task_info_out, void * task_info_outCnt) {
    r0 = _task_info_ptr(target_task, flavor, task_info_out, task_info_outCnt);
    return r0;
}

int task_set_exception_ports(int task, int exception_mask, int new_port, int behavior, int new_flavor) {
    r0 = _task_set_exception_ports_ptr(task, exception_mask, new_port, behavior, new_flavor);
    return r0;
}

int task_swap_exception_ports(int task, int exception_mask, int new_port, int behavior, int new_flavor, int masks, void * masksCnt, int old_handlerss, int old_behaviors, int old_flavors) {
    r0 = _task_swap_exception_ports_ptr(task, exception_mask, new_port, behavior, new_flavor, masks, masksCnt, old_handlerss, old_behaviors, old_flavors);
    return r0;
}

int thread_get_state(int target_act, int flavor, int old_state, void * old_stateCnt) {
    r0 = _thread_get_state_ptr(target_act, flavor, old_state, old_stateCnt);
    return r0;
}

int task_threads(int target_task, void * act_list, void * act_listCnt) {
    r0 = _task_threads_ptr(target_task, act_list, act_listCnt);
    return r0;
}

int thread_info(int target_act, int flavor, int thread_info_out, void * thread_info_outCnt) {
    r0 = _thread_info_ptr(target_act, flavor, thread_info_out, thread_info_outCnt);
    return r0;
}

int thread_resume(int target_act) {
    r0 = _thread_resume_ptr(target_act);
    return r0;
}

int thread_suspend(int target_act) {
    r0 = _thread_suspend_ptr(target_act);
    return r0;
}

int time(void * tloc) {
    r0 = _time_ptr(tloc);
    return r0;
}

int uname(void * name) {
    r0 = _uname_ptr(name);
    return r0;
}

int uncompress(void * dest, void * destLen, void * source, int sourceLen) {
    r0 = _uncompress_ptr(dest, destLen, source, sourceLen);
    return r0;
}

int unw_init_local(void * , void * ) {
    r0 = _unw_init_local_ptr(arg_0, arg_1);
    return r0;
}

int ungetc(int c, void * stream) {
    r0 = _ungetc_ptr(c, stream);
    return r0;
}

int unlink(void * path) {
    r0 = _unlink_ptr(path);
    return r0;
}

int unw_get_reg(void * , int , void * ) {
    r0 = _unw_get_reg_ptr(arg_0, arg_1, arg_2);
    return r0;
}

int unw_step(void * ) {
    r0 = _unw_step_ptr(arg_0);
    return r0;
}

int vm_deallocate(int target_task, int address, int size) {
    r0 = _vm_deallocate_ptr(target_task, address, size);
    return r0;
}

int vm_read_overwrite(int target_task, int address, int size, int data, void * outsize) {
    r0 = _vm_read_overwrite_ptr(target_task, address, size, data, outsize);
    return r0;
}

int vprintf(void * format, int ap) {
    r0 = _vprintf_ptr(format, ap);
    return r0;
}

int vsnprintf(void * str, int size, void * format, int ap) {
    r0 = _vsnprintf_ptr(str, size, format, ap);
    return r0;
}

int vsprintf(void * str, void * format, int ap) {
    r0 = _vsprintf_ptr(str, format, ap);
    return r0;
}

int write(int fildes, void * buf, int nbyte) {
    r0 = _write_ptr(fildes, buf, nbyte);
    return r0;
}

int writev(int fildes, void * iov, int iovcnt) {
    r0 = _writev_ptr(fildes, iov, iovcnt);
    return r0;
}

void * xmlBufferContent(int buf) {
    r0 = _xmlBufferContent_ptr(buf);
    return r0;
}

int xmlBufferCreate() {
    r0 = _xmlBufferCreate_ptr();
    return r0;
}

void xmlBufferFree(int buf) {
    _xmlBufferFree_ptr(buf);
    return;
}

int xmlBufferLength(int buf) {
    r0 = _xmlBufferLength_ptr(buf);
    return r0;
}

int xmlCopyNode(int node, int recursive) {
    r0 = _xmlCopyNode_ptr(node, recursive);
    return r0;
}

int xmlDocGetRootElement(int doc) {
    r0 = _xmlDocGetRootElement_ptr(doc);
    return r0;
}

void xmlFreeDoc(int cur) {
    _xmlFreeDoc_ptr(cur);
    return;
}

int xmlNodeDump(int buf, int doc, int cur, int level, int format) {
    r0 = _xmlNodeDump_ptr(buf, doc, cur, level, format);
    return r0;
}

int xmlReadMemory(void * buffer, int size, void * URL, void * encoding, int options) {
    r0 = _xmlReadMemory_ptr(buffer, size, URL, encoding, options);
    return r0;
}

int xmlXPathCastToBoolean(int val) {
    r0 = _xmlXPathCastToBoolean_ptr(val);
    return r0;
}

void * xmlXPathCastToString(int val) {
    r0 = _xmlXPathCastToString_ptr(val);
    return r0;
}

int xmlXPathCompile(void * str) {
    r0 = _xmlXPathCompile_ptr(str);
    return r0;
}

double xmlXPathCastToNumber(int val) {
    r0 = _xmlXPathCastToNumber_ptr(val);
    return r0;
}

int xmlXPathCompiledEval(int comp, int ctx) {
    r0 = _xmlXPathCompiledEval_ptr(comp, ctx);
    return r0;
}

int xmlXPathNewContext(int doc) {
    r0 = _xmlXPathNewContext_ptr(doc);
    return r0;
}

int xmlXPathRegisterNs(int ctxt, void * prefix, void * ns_uri) {
    r0 = _xmlXPathRegisterNs_ptr(ctxt, prefix, ns_uri);
    return r0;
}

void objc_terminate() {
    _objc_terminate_ptr();
    return;
}

int objc_begin_catch(void * exc_buf) {
    r0 = _objc_begin_catch_ptr(exc_buf);
    return r0;
}

void __cxa_guard_abort() {
    ___cxa_guard_abort_ptr();
    return;
}

void __cxa_free_exception() {
    ___cxa_free_exception_ptr();
    return;
}

void __cxa_end_catch() {
    ___cxa_end_catch_ptr();
    return;
}

void _ZdlPvRKSt9nothrow_t() {
    pointer to operator delete();
    return;
}

void _ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv() {
    pointer to std::__1::ios_base::__set_badbit_and_consider_rethrow();
    return;
}

void _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev() {
    pointer to std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::~basic_string();
    return;
}

int __ZN13mcwebsocketpp10connectionINS_6config11core_clientEE19handle_pong_timeoutENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEERKNS4_10error_codeE(int arg0, void * arg1) {
    r0 = arg0;
    r31 = r31 - 0x80;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = r0;
    if (*(int32_t *)r2 != 0x0) {
            r20 = r2;
            r0 = sub_1009a6c98(r29 - 0x30, 0x5);
            if (*(r20 + 0x8) == var_28) {
                    asm { ccmp       w10, w11, #0x0, eq };
            }
            if (!CPU_FLAGS & E) {
                    std::__1::error_code::message();
                    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::insert();
                    var_30 = *(int128_t *)r0;
                    *(int128_t *)(r0 + 0x8) = 0x0;
                    *(int128_t *)(r0 + 0x10) = 0x0;
                    *r0 = 0x0;
                    r0 = sub_1009a6d4c(r19, 0x1, r29 - 0x30);
                    if ((sign_extend_64(var_19) & 0xffffffff80000000) != 0x0) {
                            r0 = operator delete(var_30);
                    }
                    if ((sign_extend_64(var_31) & 0xffffffff80000000) != 0x0) {
                            r0 = operator delete(var_48);
                    }
            }
    }
    else {
            if (*(r19 + 0x258) != 0x0) {
                    r8 = *(r19 + 0x198);
                    var_50 = r8;
                    if (r8 != 0x0) {
                            do {
                                    asm { ldxr       x9, [x8] };
                                    r9 = r9 + 0x1;
                                    asm { stxr       w10, x9, [x8] };
                            } while (r10 != 0x0);
                    }
                    std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
                    r0 = *(r19 + 0x258);
                    if (r0 != 0x0) {
                            (*(*r0 + 0x30))();
                            if ((sign_extend_64(var_59) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_70);
                            }
                            r0 = var_50;
                            if (r0 != 0x0) {
                                    r0 = std::__1::__shared_weak_count::__release_weak();
                            }
                    }
                    else {
                            r0 = sub_1009a2b64();
                    }
            }
    }
    return r0;
}

int __ZN13mcwebsocketpp10connectionINS_6config11core_clientEE16handle_terminateENS3_16terminate_statusERKNSt3__110error_codeE(int arg0, void * arg1) {
    r31 = r31 - 0xa0;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r21 = r2;
    r20 = arg1;
    r19 = arg0;
    r0 = *(arg0 + 0x4610);
    if ((*(int8_t *)(r0 + 0x41) & 0x4) != 0x0) {
            sub_1009a2524(r0, 0x400, "connection handle_terminate");
    }
    if (*(int32_t *)r21 != 0x0) {
            sub_1009ab658(r19, 0x1, "handle_terminate", r21);
    }
    if (r20 == 0x2) goto loc_1009acbec;

loc_1009acb5c:
    if (r20 != 0x1) goto loc_1009acc4c;

loc_1009acb64:
    r0 = sub_1009ab5a4(&var_70, 0x15);
    r9 = *(r19 + 0x4670);
    r10 = var_68;
    r11 = var_70;
    if (r9 == r10) {
            asm { ccmp       w8, w11, #0x0, eq };
    }
    if (CPU_FLAGS & E) goto loc_1009acc60;

loc_1009acb94:
    r0 = *(r19 + 0x1f8);
    if (r0 == 0x0) goto loc_1009acc60;

loc_1009acb9c:
    r8 = *(r19 + 0x198);
    var_28 = r8;
    if (r8 == 0x0) goto loc_1009acbcc;

loc_1009acbb4:
    do {
            asm { ldxr       x9, [x8] };
            r9 = r9 + 0x1;
            asm { stxr       w10, x9, [x8] };
    } while (r10 != 0x0);
    r0 = *(r19 + 0x1f8);
    if (r0 == 0x0) goto loc_1009acce8;

loc_1009acbcc:
    (*(*r0 + 0x30))();
    r0 = var_28;
    if (r0 != 0x0) {
            r0 = std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_1009acc60;

loc_1009acc60:
    if (*(r19 + 0x43a8) != 0x0) {
            sub_1009a4c34(r19);
            r0 = *(r19 + 0x43a8);
            if (r0 != 0x0) {
                    r0 = (*(*r0 + 0x30))();
                    r19 = var_48;
                    if (r19 != 0x0) {
                            do {
                                    asm { ldaxr      x9, [x8] };
                                    asm { stlxr      w11, x10, [x8] };
                            } while (r11 != 0x0);
                            if (r9 == 0x0) {
                                    (*(*r19 + 0x10))(r19);
                                    r0 = std::__1::__shared_weak_count::__release_weak();
                            }
                    }
            }
            else {
                    r0 = sub_1009a2b64();
            }
    }
    return r0;

loc_1009acce8:
    r0 = sub_1009a2b64();
    return r0;

loc_1009acc4c:
    r0 = *(r19 + 0x4618);
    r0 = sub_1009a6ba0(r0, 0x10, "Unknown terminate_status");
    goto loc_1009acc60;

loc_1009acbec:
    r0 = *(r19 + 0x1d8);
    if (r0 == 0x0) goto loc_1009acc40;

loc_1009acbf4:
    r8 = *(r19 + 0x198);
    var_38 = r8;
    if (r8 == 0x0) goto loc_1009acc24;

loc_1009acc0c:
    do {
            asm { ldxr       x9, [x8] };
            r9 = r9 + 0x1;
            asm { stxr       w10, x9, [x8] };
    } while (r10 != 0x0);
    r0 = *(r19 + 0x1d8);
    if (r0 == 0x0) goto loc_1009acce0;

loc_1009acc24:
    (*(*r0 + 0x30))();
    if (var_38 != 0x0) {
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_1009acc40;

loc_1009acc40:
    r0 = sub_1009ad450(r19);
    goto loc_1009acc60;

loc_1009acce0:
    r0 = sub_1009a2b64();
    return r0;
}

int __ZN13mcwebsocketpp10connectionINS_6config11core_clientEE26handle_write_http_responseERKNSt3__110error_codeE(void * arg0) {
    r31 = r31 - 0x1b0;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg0;
    r24 = &var_170;
    sub_1009a2524(*(arg0 + 0x4610), 0x400, "handle_write_http_response");
    q0 = *(int128_t *)r1;
    *(int128_t *)(r24 + 0x120) = q0;
    if (var_50 != 0x0) goto loc_1009b733c;

loc_1009b71f0:
    r20 = r19 + 0x308;
    std::__1::mutex::lock();
    r8 = *(int32_t *)(r19 + 0x300);
    if (r8 == 0x3) goto loc_1009b73c4;

loc_1009b7208:
    if (r8 != 0x0 || *(int32_t *)(r19 + 0x304) != 0x6) goto loc_1009b730c;

loc_1009b7218:
    r22 = r19 + 0x45c0;
    std::__1::mutex::unlock();
    if (*(r19 + 0x43c0) != 0x0) {
            r20 = *(r19 + 0x43c8);
            *(int128_t *)(r19 + 0x43c0) = q0;
            if (r20 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            r10 = r9 - 0x1;
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r20 + 0x10))(r20);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    if (*(int32_t *)r22 != 0x65) goto loc_1009b73e4;

loc_1009b7284:
    sub_1009b7f30(r19);
    *(r19 + 0x300) = *0x100bf7478;
    r0 = *(r19 + 0x1b8);
    if (r0 == 0x0) goto loc_1009b72ec;

loc_1009b72a0:
    r8 = *(r19 + 0x198);
    var_190 = r8;
    if (r8 == 0x0) goto loc_1009b72d0;

loc_1009b72b8:
    do {
            asm { ldxr       x9, [x8] };
            r9 = r9 + 0x1;
            asm { stxr       w10, x9, [x8] };
    } while (r10 != 0x0);
    r0 = *(r19 + 0x1b8);
    if (r0 == 0x0) goto loc_1009b7660;

loc_1009b72d0:
    (*(*r0 + 0x30))();
    if (var_190 != 0x0) {
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_1009b72ec;

loc_1009b72ec:
    std::__1::system_category();
    r0 = mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_frame(r19, &var_170);
    return r0;

loc_1009b7660:
    r0 = sub_1009a2b64();
    return r0;

loc_1009b73e4:
    if (*(int8_t *)(r22 + 0xb8) != 0x0) {
            sub_1009b7828(r19);
            r22 = r22 + 0xa8;
            if (*(int32_t *)r22 != 0x0) {
                    std::__1::error_code::message();
                    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::insert();
                    *(int128_t *)(r0 + 0x8) = 0x0;
                    *(int128_t *)(r0 + 0x10) = 0x0;
                    *r0 = 0x0;
                    r0 = sub_1009a4cc0(r20, 0x400, &var_170);
                    if ((sign_extend_64(var_159) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_170);
                    }
                    if ((sign_extend_64(var_171) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_188);
                    }
            }
            r8 = 0x1011c4d88;
            asm { ldarb      w8, [x8] };
            if ((r8 & 0x1) == 0x0) {
                    if (__cxa_guard_acquire() != 0x0) {
                            *0x1011c4d80 = *qword_100e60820 + 0x10;
                            __cxa_atexit();
                            __cxa_guard_release();
                    }
            }
            *(r19 + 0x4668) = 0x15;
            *(r19 + 0x4670) = 0x1011c4d80;
    }
    else {
            r20 = &var_170 + 0x80;
            r21 = &var_170 + 0x18;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)(r24 + 0x58) = q0;
            *(int128_t *)(r24 + 0x68) = q0;
            sub_100063f9c(&var_170 + 0x10, "Handshake ended with HTTP error: ", 0x21);
            std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
            sub_100063e7c(r21);
            r0 = sub_1009a6d4c(r22, 0x10, &var_188);
            if ((sign_extend_64(var_171) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_188);
            }
            if ((sign_extend_64(var_101) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_118);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    r1 = r19 + 0x4668;
    goto loc_1009b73a0;

loc_1009b73a0:
    r0 = sub_1009ab294(r19, r1);
    return r0;

loc_1009b730c:
    r8 = 0x1011c4d88;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    var_48 = 0x1011c4d80;
    std::__1::mutex::unlock();
    goto loc_1009b733c;

loc_1009b733c:
    sub_1009a6c98(&var_170, 0x7);
    if (var_48 == var_168) {
            asm { ccmp       w20, w10, #0x0, eq };
    }
    if (CPU_FLAGS & NE || *(int32_t *)(r19 + 0x300) != 0x3) goto loc_1009b7384;

loc_1009b736c:
    r0 = *(r19 + 0x4610);
    r0 = sub_1009a2524(r0, 0x400, "got (expected) eof/state error from closed con");
    return r0;

loc_1009b7384:
    sub_1009ab658(r19, 0x10, "handle_write_http_response", r29 - 0x50);
    r1 = r29 - 0x50;
    goto loc_1009b73a0;

loc_1009b73c4:
    sub_1009a2524(*(r19 + 0x4610), 0x400, "handle_write_http_response invoked after connection was closed");
    r0 = std::__1::mutex::unlock();
    return r0;
}

int __ZN13mcwebsocketpp10connectionINS_6config11core_clientEE17handle_read_frameERKNSt3__110error_codeEm(void * arg0, long arg1) {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x1b0;
    r19 = arg0;
    q0 = *(int128_t *)arg1;
    var_70 = q0;
    if (var_70 != 0x0) goto loc_1009aaa20;

loc_1009aa19c:
    if (*(int32_t *)(r19 + 0x304) != 0x7) goto loc_1009aaa00;

loc_1009aa1a8:
    r22 = r2;
    if ((*(int8_t *)(*(r19 + 0x4610) + 0x41) & 0x4) != 0x0) {
            r20 = &var_188 + 0x80;
            r21 = &var_188 + 0x18;
            var_180 = 0x0;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)(&var_188 + 0x58) = q0;
            *(int128_t *)(&var_188 + 0x68) = q0;
            sub_100063f9c(&var_188 + 0x10, "p = ", 0x4);
            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), " bytes transferred = ", 0x15);
            std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
            sub_100063e7c(r21);
            r0 = sub_1009a4cc0(r23, 0x400, &var_1A0);
            if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1A0);
            }
            r10 = *qword_100e60998 + 0x10;
            var_188 = *qword_100e609a8 + 0x18;
            if ((sign_extend_64(var_119) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_130);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    if (r22 == 0x0) goto loc_1009aa9f4;

loc_1009aa304:
    r28 = *qword_100e60998;
    r26 = 0x0;
    r20 = &var_188 + 0x80;
    r21 = &var_188 + 0x18;
    r27 = &var_188 + 0x58;
    r23 = &var_188 + 0x10;
    var_1E8 = *qword_100e609a8 + 0x40;
    var_1F0 = r28 + 0x10;
    var_1F8 = *qword_100e607d8 + 0x8;
    goto loc_1009aa33c;

loc_1009aa33c:
    if ((*(int8_t *)(*(r19 + 0x4610) + 0x41) & 0x4) != 0x0) {
            var_180 = 0x0;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)r27 = q0;
            *(int128_t *)(r27 + 0x10) = q0;
            sub_100063f9c(r23, "calling consume with ", 0x15);
            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), " bytes", 0x6);
            sub_100063e7c(r21);
            r0 = sub_1009a4cc0(r25, 0x400, &var_1A0);
            if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1A0);
            }
            r10 = *qword_100e60998 + 0x10;
            var_188 = *qword_100e609a8 + 0x18;
            if ((sign_extend_64(var_119) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_130);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    var_1A8 = std::__1::system_category();
    if ((*(int8_t *)(*(r19 + 0x4610) + 0x41) & 0x4) == 0x0) {
            r28 = r22 - r26;
    }
    else {
            var_180 = 0x0;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)r27 = q0;
            *(int128_t *)(r27 + 0x10) = q0;
            r25 = sub_100063f9c(r23, "Processing Bytes: ", 0x12);
            r28 = r22 - r26;
            r1 = r28;
            sub_1009ab920(0x388 + r19 + r26, r1);
            r8 = var_189;
            r10 = var_1A0;
            r11 = var_198;
            r9 = &var_1A0;
            if (sign_extend_64(r8) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r1 = r9;
                    }
                    else {
                            r1 = r10;
                    }
            }
            r2 = 0x12;
            if (CPU_FLAGS & L) {
                    if (!CPU_FLAGS & L) {
                            r2 = r8;
                    }
                    else {
                            r2 = r11;
                    }
            }
            sub_100063f9c(r25, r1, r2);
            if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1A0);
            }
            sub_100063e7c(r21);
            r0 = sub_1009a4cc0(r25, 0x400, &var_1A0);
            if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1A0);
            }
            r24 = *qword_100e609a8;
            r10 = *qword_100e60998;
            r10 = r10 + 0x10;
            var_188 = r24 + 0x18;
            if ((sign_extend_64(var_119) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_130);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    r0 = *(r19 + 0x43f8);
    r0 = (*(*r0 + 0x70))(r0, 0x388 + r19 + r26, r28, &var_1B0);
    r26 = r0 + r26;
    if ((*(int8_t *)(*(r19 + 0x4610) + 0x41) & 0x4) != 0x0) {
            var_180 = 0x0;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)r27 = q0;
            *(int128_t *)(r27 + 0x10) = q0;
            sub_100063f9c(r23, "bytes left after consume: ", 0x1a);
            std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
            sub_100063e7c(r21);
            r0 = sub_1009a4cc0(r25, 0x400, &var_1A0);
            if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1A0);
            }
            r10 = *qword_100e60998 + 0x10;
            var_188 = *qword_100e609a8 + 0x18;
            if ((sign_extend_64(var_119) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_130);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    if (0x0 != 0x0) goto loc_1009aab88;

loc_1009aa720:
    r0 = *(r19 + 0x43f8);
    if ((*(*r0 + 0x78))(r0) == 0x0) goto loc_1009aa9ec;

loc_1009aa734:
    if ((*(int8_t *)(*(r19 + 0x4610) + 0x41) & 0x4) != 0x0) {
            var_180 = 0x0;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)r27 = q0;
            *(int128_t *)(r27 + 0x10) = q0;
            sub_100063f9c(r23, "Complete message received. Dispatching", 0x26);
            sub_100063e7c(r21);
            r0 = sub_1009a4cc0(r25, 0x400, &var_1A0);
            if ((sign_extend_64(var_189) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_1A0);
            }
            r10 = *qword_100e60998 + 0x10;
            var_188 = *qword_100e609a8 + 0x18;
            if ((sign_extend_64(var_119) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_130);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    r0 = *(r19 + 0x43f8);
    r9 = *(*r0 + 0x80);
    (r9)(r0);
    r8 = var_188;
    if (r8 == 0x0) goto loc_1009aa8c8;

loc_1009aa858:
    if (*(int32_t *)(r8 + 0x58) <= 0x7) goto loc_1009aa8e0;

loc_1009aa864:
    r9 = var_180;
    var_1D8 = r9;
    if (r9 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    sub_1009abbb8(r19, &var_1E0);
    r25 = var_1D8;
    if (r25 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    r10 = r9 - 0x1;
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r25 + 0x10))(r25);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_1009aa9b4;

loc_1009aa9b4:
    r25 = var_180;
    if (r25 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    r10 = r9 - 0x1;
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r25 + 0x10))(r25);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_1009aa9ec;

loc_1009aa9ec:
    if (r26 < r22) goto loc_1009aa33c;

loc_1009aa9f4:
    r0 = sub_1009ac384(r19);
    return r0;

.l22:
    return r0;

loc_1009aa8e0:
    r9 = *(int32_t *)(r19 + 0x300);
    if (r9 != 0x1) goto loc_1009aa9a0;

loc_1009aa8ec:
    r9 = *(r19 + 0x2d8);
    if (r9 == 0x0) goto loc_1009aa9b4;

loc_1009aa8f4:
    r9 = *(r19 + 0x198);
    var_1B8 = r9;
    if (r9 != 0x0) {
            do {
                    asm { ldxr       x10, [x9] };
                    r10 = r10 + 0x1;
                    asm { stxr       w11, x10, [x9] };
            } while (r11 != 0x0);
    }
    r9 = var_180;
    var_1C8 = r9;
    if (r9 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
    }
    r0 = *(r19 + 0x2d8);
    if (r0 == 0x0) goto loc_1009aad18;

loc_1009aa944:
    (*(*r0 + 0x30))();
    r25 = var_1C8;
    if (r25 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    r10 = r9 - 0x1;
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r25 + 0x10))(r25);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    if (var_1B8 != 0x0) {
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_1009aa9b4;

loc_1009aad18:
    r0 = sub_1009a2b64();
    return r0;

loc_1009aa9a0:
    sub_1009a6ba0(*(r19 + 0x4618), 0x8, "got non-close frame while closing");
    goto loc_1009aa9b4;

loc_1009aa8c8:
    sub_1009a2524(*(r19 + 0x4610), 0x400, "null message from m_processor");
    goto loc_1009aa9b4;

loc_1009aab88:
    sub_1009ab658(r19, 0x10, "consume", &var_1B0);
    std::__1::system_category();
    r21 = var_1B0;
    r22 = var_1A8;
    r8 = 0x1011c4db8;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4db0 = *qword_100e60830 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    if (r22 != 0x1011c4db0) {
            r20 = 0x0;
    }
    else {
            if (r21 <= 0x19) {
                    r8 = 0x1 << r21;
                    if ((r8 & 0x3003f88) != 0x0) {
                            r20 = 0x3ea;
                    }
                    else {
                            if ((r8 & 0x10020) != 0x0) {
                                    r20 = 0x3ef;
                            }
                            else {
                                    if (r21 == 0x4) {
                                            r20 = 0x3f1;
                                    }
                                    else {
                                            r20 = 0x3f3;
                                    }
                            }
                    }
            }
            else {
                    r20 = 0x3f3;
            }
    }
    std::__1::error_code::message();
    r0 = sub_1009aba2c(r19, r20, &var_188, &var_1A0);
    if ((sign_extend_64(var_171) & 0xffffffff80000000) != 0x0) {
            r0 = operator delete(var_188);
    }
    if (0x0 == 0x0) goto .l22;

loc_1009aac38:
    sub_1009ab658(r19, 0x20, "Protocol error close frame ", &var_1A0);
    r1 = &var_1A0;
    goto loc_1009aab4c;

loc_1009aab4c:
    r0 = sub_1009ab294(r19, r1);
    return r0;

loc_1009aaa00:
    r8 = 0x1011c4d88;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    var_70 = 0x9;
    var_68 = 0x1011c4d80;
    goto loc_1009aaa20;

loc_1009aaa20:
    sub_1009a6c98(&var_188, 0x7);
    if (var_68 == var_180) {
            asm { ccmp       w21, w10, #0x0, eq };
    }
    if (CPU_FLAGS & E) goto loc_1009aaaa8;

loc_1009aaa44:
    sub_1009ab5a4(&var_188, 0x9);
    if (var_68 == var_180) {
            asm { ccmp       w10, w11, #0x0, eq };
    }
    if (CPU_FLAGS & E) goto loc_1009aaacc;

loc_1009aaa6c:
    r0 = sub_1009a6c98(&var_188, 0x8);
    if (var_68 != var_180 || var_70 != var_188) goto loc_1009aab04;

loc_1009aaa98:
    if (*(int32_t *)(r19 + 0x300) != 0x3) goto loc_1009aaafc;

loc_1009aab74:
    std::__1::system_category();
    r1 = &var_188;
    goto loc_1009aab4c;

loc_1009aaafc:
    r1 = 0x10;
    goto loc_1009aab34;

loc_1009aab34:
    sub_1009ab658(r19, r1, "handle_read_frame", r29 - 0x70);
    r1 = r29 - 0x70;
    goto loc_1009aab4c;

loc_1009aab04:
    sub_1009a6c98(&var_188, 0xa);
    if (var_70 == var_188) {
            asm { ccmp       x8, x9, #0x0, eq };
    }
    r1 = 0xa;
    if (CPU_FLAGS & E) {
            if (!CPU_FLAGS & E) {
                    r1 = 0x10;
            }
            else {
                    r1 = 0x4;
            }
    }
    goto loc_1009aab34;

loc_1009aaacc:
    if (*(int32_t *)(r19 + 0x300) != 0x3) goto loc_1009aaafc;

loc_1009aaad8:
    r0 = *(r19 + 0x4610);
    r2 = "handle_read_frame: got invalid istate in closed state";
    goto loc_1009aaae4;

loc_1009aaae4:
    r0 = sub_1009a2524(r0, 0x400, r2);
    return r0;

loc_1009aaaa8:
    r8 = *(int32_t *)(r19 + 0x300);
    if (r8 == 0x2) goto loc_1009aaaf0;

loc_1009aaab4:
    if (r8 != 0x3) goto loc_1009aaafc;

loc_1009aaabc:
    r0 = *(r19 + 0x4610);
    r2 = "got eof from closed con";
    goto loc_1009aaae4;

loc_1009aaaf0:
    if (*(int8_t *)(r19 + 0x4608) == 0x0) goto loc_1009aab74;
}

int __ZN13mcwebsocketpp10connectionINS_6config11core_clientEE25handle_read_http_responseERKNSt3__110error_codeEm(void * arg0, long arg1) {
    r31 = r31 - 0x120;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = r2;
    r19 = arg0;
    sub_1009a2524(*(arg0 + 0x4610), 0x400, "handle_read_http_response");
    if (*(int128_t *)arg1 != 0x0) goto loc_1009c1380;

loc_1009c11bc:
    r21 = r19 + 0x308;
    std::__1::mutex::lock();
    r8 = *(int32_t *)(r19 + 0x300);
    if (r8 == 0x3) goto loc_1009c1420;

loc_1009c11d4:
    if (r8 != 0x0 || *(int32_t *)(r19 + 0x304) != 0x4) goto loc_1009c1350;

loc_1009c11e4:
    std::__1::mutex::unlock();
    r23 = r19 + 0x4528;
    r21 = r19 + 0x388;
    r22 = sub_1009c1a24(r23, r21, r20);
    r24 = *(r19 + 0x4610);
    r0 = sub_10099f18c(&var_100, "Raw response: ");
    r25 = &var_98;
    sub_1009b6d00(r23);
    r8 = var_81;
    r9 = sign_extend_64(r8);
    r10 = var_98;
    r11 = stack[-160];
    r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::append();
    q0 = *(int128_t *)r0;
    *(int128_t *)(r0 + 0x8) = 0x0;
    *(int128_t *)(r0 + 0x10) = 0x0;
    *r0 = 0x0;
    r0 = sub_1009a4cc0(r24, 0x400, &var_D0);
    if ((sign_extend_64(var_B9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_D0);
    }
    if ((sign_extend_64(var_81) & 0xffffffff80000000) != 0x0) {
            operator delete(var_98);
    }
    if ((sign_extend_64(var_E9) & 0xffffffff80000000) != 0x0) {
            operator delete(var_100);
    }
    if ((*(int32_t *)(r19 + 0x45c4) | 0x1) != 0x3) goto loc_1009c1440;

loc_1009c12bc:
    if (*(r19 + 0x43c0) != 0x0) {
            r24 = *(r19 + 0x43c8);
            *(int128_t *)(r19 + 0x43c0) = q0;
            if (r24 != 0x0) {
                    do {
                            asm { ldaxr      x9, [x8] };
                            r10 = r9 - 0x1;
                            asm { stlxr      w11, x10, [x8] };
                    } while (r11 != 0x0);
                    if (r9 == 0x0) {
                            (*(*r24 + 0x10))(r24);
                            std::__1::__shared_weak_count::__release_weak();
                    }
            }
    }
    r0 = *(r19 + 0x43f8);
    if ((*(*r0 + 0x48))(r0, r19 + 0x4478, r23) == 0x0) goto loc_1009c14bc;

loc_1009c1330:
    sub_1009ab658(r19, 0x10, "Server handshake response", &var_A8);
    r1 = &var_A8;
    goto loc_1009c13e4;

loc_1009c13e4:
    r0 = sub_1009ab294(r19, r1);
    goto loc_1009c13ec;

loc_1009c13ec:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009c14bc:
    std::__1::system_category();
    r24 = &var_D0 + 0x10;
    r0 = *(r19 + 0x43f8);
    r9 = *(*r0 + 0x28);
    (r9)(r0, r23);
    var_D0 = var_100;
    r23 = &var_100 + 0x10;
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            operator delete(0x0);
    }
    q0 = *(int128_t *)r23;
    *(r24 + 0x10) = *(r23 + 0x10);
    *(int128_t *)r24 = q0;
    if (var_D0 != 0x0) {
            std::__1::error_code::message();
            r0 = std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::insert();
            *(int128_t *)(r0 + 0x8) = 0x0;
            *(int128_t *)(r0 + 0x10) = 0x0;
            *r0 = 0x0;
            r0 = sub_1009a4cc0(r23, 0x400, &var_100);
            if ((sign_extend_64(var_E9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_100);
            }
            if ((sign_extend_64(var_81) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_98);
            }
            r8 = 0x1011c4d88;
            asm { ldarb      w8, [x8] };
            if ((r8 & 0x1) == 0x0) {
                    if (__cxa_guard_acquire() != 0x0) {
                            *0x1011c4d80 = *qword_100e60820 + 0x10;
                            __cxa_atexit();
                            __cxa_guard_release();
                    }
            }
            r9 = 0x1011c4d80;
            sub_1009ab294(r19, &var_100);
    }
    *(r19 + 0x300) = *0x100bf7478;
    sub_1009b7f30(r19);
    r0 = *(r19 + 0x1b8);
    if (r0 == 0x0) goto loc_1009c1624;

loc_1009c15d8:
    r8 = *(r19 + 0x198);
    var_108 = r8;
    if (r8 == 0x0) goto loc_1009c1608;

loc_1009c15f0:
    do {
            asm { ldxr       x9, [x8] };
            r9 = r9 + 0x1;
            asm { stxr       w10, x9, [x8] };
    } while (r10 != 0x0);
    r0 = *(r19 + 0x1b8);
    if (r0 == 0x0) goto loc_1009c175c;

loc_1009c1608:
    (*(*r0 + 0x30))();
    if (var_108 != 0x0) {
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_1009c1624;

loc_1009c1624:
    r1 = r22 + r19 + 0x388;
    r2 = r20 + r19 + 0x388 - r1;
    if (r2 != 0x0) {
            memmove(r21, r1, r2);
    }
    *(r19 + 0x4388) = r20 - r22;
    std::__1::system_category();
    r0 = mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_frame(r19, &var_100);
    if ((sign_extend_64(var_A9) & 0xffffffff80000000) != 0x0) {
            r0 = operator delete(0x0);
    }
    goto loc_1009c13ec;

loc_1009c175c:
    r0 = sub_1009a2b64();
    return r0;

loc_1009c1440:
    sub_1009a4c34(r19);
    r0 = operator new();
    r8 = *qword_100e60958;
    r9 = *mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_http_response(std::__1::error_code const&, unsigned long);
    *(int128_t *)r0 = r8 + 0x10;
    *(int128_t *)(r0 + 0x8) = r9;
    *(int128_t *)(r0 + 0x10) = 0x0;
    *(int128_t *)(r0 + 0x18) = var_D0;
    *(r0 + 0x20) = var_C8;
    sub_1009aefec(r19, 0x1, r21, 0x4000, r29 - 0x68);
    r0 = r0;
    if (r29 - 0x68 == r0) goto loc_1009c1678;

loc_1009c14ac:
    if (r0 == 0x0) goto loc_1009c1684;

loc_1009c14b0:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1009c1680;

loc_1009c1680:
    r0 = (r8)();
    goto loc_1009c1684;

loc_1009c1684:
    if (0x0 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (*mcwebsocketpp::connection<mcwebsocketpp::config::core_client>::handle_read_http_response(std::__1::error_code const&, unsigned long) == 0x0) {
                    (*(*0x0 + 0x10))(0x0);
                    r0 = std::__1::__shared_weak_count::__release_weak();
            }
    }
    goto loc_1009c13ec;

loc_1009c1678:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1009c1680;

loc_1009c1350:
    r8 = 0x1011c4d88;
    asm { ldarb      w8, [x8] };
    if ((r8 & 0x1) == 0x0) {
            if (__cxa_guard_acquire() != 0x0) {
                    *0x1011c4d80 = *qword_100e60820 + 0x10;
                    __cxa_atexit();
                    __cxa_guard_release();
            }
    }
    var_78 = 0x1011c4d80;
    std::__1::mutex::unlock();
    goto loc_1009c1380;

loc_1009c1380:
    sub_1009a6c98(&var_D0, 0x7);
    if (var_78 == var_C8) {
            asm { ccmp       w21, w10, #0x0, eq };
    }
    if (CPU_FLAGS & NE || *(int32_t *)(r19 + 0x300) != 0x3) goto loc_1009c13c8;

loc_1009c13b0:
    r0 = *(r19 + 0x4610);
    r0 = sub_1009a2524(r0, 0x400, "got (expected) eof/state error from closed con");
    goto loc_1009c13ec;

loc_1009c13c8:
    sub_1009ab658(r19, 0x10, "handle_read_http_response", r29 - 0x80);
    r1 = r29 - 0x80;
    goto loc_1009c13e4;

loc_1009c1420:
    sub_1009a2524(*(r19 + 0x4610), 0x400, "handle_read_http_response invoked after connection was closed");
    r0 = std::__1::mutex::unlock();
    goto loc_1009c13ec;
}

int __ZN13mcwebsocketpp10connectionINS_6config11core_clientEE21handle_transport_initERKNSt3__110error_codeE(void * arg0) {
    r31 = r31 - 0x190;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = arg0;
    sub_1009a2524(*(arg0 + 0x4610), 0x400, "connection handle_transport_init");
    q0 = *(int128_t *)r1;
    var_50 = q0;
    if (*(int32_t *)(r19 + 0x304) == 0x1) {
            if (var_50 == 0x0) {
                    if (*(int8_t *)(r19 + 0x4608) != 0x0) {
                            *(int32_t *)(r19 + 0x304) = 0x2;
                            r0 = sub_1009b0d5c(r19, 0x1);
                    }
                    else {
                            *(int32_t *)(r19 + 0x304) = 0x3;
                            sub_1009b1050(r19);
                            r9 = var_160;
                            *(r19 + 0x43f8) = var_168;
                            r20 = *(r19 + 0x4400);
                            *(r19 + 0x4400) = r9;
                            if (r20 != 0x0) {
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*r20 + 0x10))(r20);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                            if (0x0 != 0x0) {
                                    do {
                                            asm { ldaxr      x9, [x8] };
                                            asm { stlxr      w11, x10, [x8] };
                                    } while (r11 != 0x0);
                                    if (r9 == 0x0) {
                                            (*(*0x0 + 0x10))(0x0);
                                            std::__1::__shared_weak_count::__release_weak();
                                    }
                            }
                            r0 = sub_1009b14d4(r19);
                    }
            }
            else {
                    r20 = &var_168 + 0x80;
                    r21 = &var_168 + 0x18;
                    std::__1::ios_base::init();
                    std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
                    var_110 = q0;
                    r1 = "handle_transport_init received error: ";
                    r22 = sub_100063f9c(&var_168 + 0x10, r1, 0x26);
                    r25 = &var_180;
                    std::__1::error_code::message();
                    r8 = var_169;
                    r10 = var_180;
                    r11 = stack[-392];
                    if (sign_extend_64(r8) < 0x0) {
                            if (!CPU_FLAGS & L) {
                                    r1 = r25;
                            }
                            else {
                                    r1 = r10;
                            }
                    }
                    r2 = 0x26;
                    if (CPU_FLAGS & L) {
                            if (!CPU_FLAGS & L) {
                                    r2 = r8;
                            }
                            else {
                                    r2 = r11;
                            }
                    }
                    sub_100063f9c(r22, r1, r2);
                    if ((sign_extend_64(var_169) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_180);
                    }
                    sub_100063e7c(r21);
                    r0 = sub_1009a6d4c(r22, 0x10, &var_180);
                    if ((sign_extend_64(var_169) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_180);
                    }
                    sub_1009ab294(r19, r29 - 0x50);
                    if ((sign_extend_64(var_F9) & 0xffffffff80000000) != 0x0) {
                            operator delete(var_110);
                    }
                    std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
                    std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
                    r0 = std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
            }
    }
    else {
            sub_1009a2524(*(r19 + 0x4610), 0x400, "handle_transport_init must be called from transport init state");
            r8 = 0x1011c4d88;
            asm { ldarb      w8, [x8] };
            if ((r8 & 0x1) == 0x0) {
                    if (__cxa_guard_acquire() != 0x0) {
                            *0x1011c4d80 = *qword_100e60820 + 0x10;
                            __cxa_atexit();
                            __cxa_guard_release();
                    }
            }
            r20 = &var_168 + 0x80;
            r21 = &var_168 + 0x18;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            var_110 = q0;
            r1 = "handle_transport_init received error: ";
            r22 = sub_100063f9c(&var_168 + 0x10, r1, 0x26);
            r25 = &var_180;
            std::__1::error_code::message();
            r8 = var_169;
            r10 = var_180;
            r11 = stack[-392];
            if (sign_extend_64(r8) < 0x0) {
                    if (!CPU_FLAGS & L) {
                            r1 = r25;
                    }
                    else {
                            r1 = r10;
                    }
            }
            r2 = 0x26;
            if (CPU_FLAGS & L) {
                    if (!CPU_FLAGS & L) {
                            r2 = r8;
                    }
                    else {
                            r2 = r11;
                    }
            }
            sub_100063f9c(r22, r1, r2);
            if ((sign_extend_64(var_169) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_180);
            }
            sub_100063e7c(r21);
            r0 = sub_1009a6d4c(r22, 0x10, &var_180);
            if ((sign_extend_64(var_169) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_180);
            }
            sub_1009ab294(r19, r29 - 0x50);
            if ((sign_extend_64(var_F9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_110);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            r0 = std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    return r0;
}

int __ZN13mcwebsocketpp10connectionINS_6config11core_clientEE11write_frameEv() {
    var_50 = r28;
    stack[-88] = r27;
    var_40 = r26;
    stack[-72] = r25;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r31 = r31 + 0xffffffffffffffa0 - 0x3e0;
    r19 = r0;
    r20 = r0 + 0x348;
    std::__1::mutex::lock();
    r23 = r19 + 0x4470;
    if (*(int8_t *)r23 == 0x0) goto loc_1009a3edc;

loc_1009a3ea0:
    if (**___stack_chk_guard == **___stack_chk_guard) {
            r0 = std::__1::mutex::unlock();
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009a3edc:
    sub_1009a5408(r19);
    r22 = var_2C0;
    var_3F8 = r19 + 0x4458;
    if (r22 == 0x0) goto loc_1009a40c4;

loc_1009a3efc:
    r24 = r19 + 0x4468;
    goto loc_1009a3f0c;

loc_1009a3f0c:
    r8 = *(r19 + 0x4460);
    r9 = *(r19 + 0x4468);
    if (r8 == r9) goto loc_1009a3f4c;

loc_1009a3f1c:
    *r8 = r22;
    r9 = var_2B8;
    *(r8 + 0x8) = r9;
    if (r9 != 0x0) {
            r9 = r9 + 0x8;
            do {
                    asm { ldxr       x10, [x9] };
                    r10 = r10 + 0x1;
                    asm { stxr       w11, x10, [x9] };
            } while (r11 != 0x0);
    }
    *(r19 + 0x4460) = r8 + 0x10;
    goto loc_1009a3ffc;

loc_1009a3ffc:
    if (*(int8_t *)(var_2C0 + 0x5e) == 0x0) goto loc_1009a402c;

loc_1009a4008:
    r22 = var_2B8;
    var_2C0 = 0x0;
    var_2B8 = 0x0;
    if (r22 == 0x0) goto loc_1009a40c0;

loc_1009a4018:
    do {
            asm { ldaxr      x9, [x8] };
            r10 = r9 - 0x1;
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_1009a40a0;

loc_1009a40a0:
    if (r9 == 0x0) {
            (*(*r22 + 0x10))(r22);
            std::__1::__shared_weak_count::__release_weak();
    }
    goto loc_1009a40bc;

loc_1009a40bc:
    r22 = var_2C0;
    goto loc_1009a40c0;

loc_1009a40c0:
    if (r22 != 0x0) goto loc_1009a3f0c;

loc_1009a40c4:
    r8 = *(r19 + 0x4458);
    r9 = *(r19 + 0x4460);
    r24 = 0x1;
    if (r8 != r9) {
            *(int8_t *)r23 = 0x1;
            r24 = 0x0;
    }
    r22 = var_2B8;
    if (r22 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r22 + 0x10))(r22);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    r0 = std::__1::mutex::unlock();
    if (r24 != 0x0) goto loc_1009a4980;

loc_1009a4124:
    r25 = *(r19 + 0x4458);
    if (r25 == *(r19 + 0x4460)) goto loc_1009a42fc;

loc_1009a4134:
    var_400 = r19 + 0x4440;
    goto loc_1009a4140;

loc_1009a4140:
    r28 = *r25;
    r8 = sign_extend_64(*(int8_t *)(r28 + 0x27));
    if ((r8 & 0xffffffff80000000) == 0x0) {
            r26 = r28 + 0x10;
            r27 = r8 & 0xff;
    }
    else {
            r26 = *(int128_t *)(r28 + 0x10);
            r27 = *(int128_t *)(r28 + 0x18);
    }
    r9 = *(r19 + 0x4448);
    r8 = *(r19 + 0x4450);
    if (r9 >= r8) goto loc_1009a417c;

loc_1009a416c:
    *(int128_t *)r9 = r26;
    *(int128_t *)(r9 + 0x8) = r27;
    *(r19 + 0x4448) = r9 + 0x10;
    goto loc_1009a4218;

loc_1009a4218:
    r26 = r28 + 0x40;
    r8 = sign_extend_64(*(int8_t *)(r26 + 0x17));
    if ((r8 & 0xffffffff80000000) == 0x0) {
            r27 = r8 & 0xff;
    }
    else {
            r26 = *(int128_t *)(r28 + 0x40);
            r27 = *(int128_t *)(r28 + 0x48);
    }
    r9 = *(r19 + 0x4448);
    r8 = *(r19 + 0x4450);
    if (r9 >= r8) goto loc_1009a4250;

loc_1009a4240:
    *(int128_t *)r9 = r26;
    *(int128_t *)(r9 + 0x8) = r27;
    *(r19 + 0x4448) = r9 + 0x10;
    goto loc_1009a42ec;

loc_1009a42ec:
    r25 = r25 + 0x10;
    if (r25 != *(r19 + 0x4460)) goto loc_1009a4140;

loc_1009a42fc:
    r8 = *(r19 + 0x4610);
    if ((*(int8_t *)(r8 + 0x40) & 0x8) != 0x0 && (*(int8_t *)(r8 + 0x44) & 0x8) != 0x0) {
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)(&var_1A0 + 0x58) = q0;
            *(int128_t *)(&var_1A0 + 0x68) = q0;
            var_410 = &var_1A0 + 0x80;
            var_408 = &var_1A0 + 0x18;
            var_418 = &var_2C0 + 0x80;
            std::__1::ios_base::init();
            var_400 = &var_2C0 + 0x18;
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            *(int128_t *)(&var_2C0 + 0x58) = q0;
            *(int128_t *)(&var_2C0 + 0x68) = q0;
            var_420 = &var_3D8 + 0x80;
            std::__1::ios_base::init();
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::basic_streambuf();
            var_380 = q0;
            var_428 = &var_3D8 + 0x18;
            sub_100063f9c(&var_1A0 + 0x10, "Dispatching write containing ", 0x1d);
            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), " message(s) containing ", 0x17);
            r20 = &var_2C0 + 0x10;
            sub_100063f9c(r20, "Header Bytes: \n", 0xf);
            r21 = &var_3D8 + 0x10;
            sub_100063f9c(&var_3D8 + 0x10, "Payload Bytes: \n", 0x10);
            var_430 = &var_1A0 + 0x10;
            r9 = *(r19 + 0x4460);
            r8 = *(r19 + 0x4458);
            if (r9 == r8) {
                    r25 = 0x0;
                    r28 = 0x0;
            }
            else {
                    r24 = 0x0;
                    r22 = 0x0;
                    r28 = 0x0;
                    r25 = 0x0;
                    do {
                            r8 = *(r8 + r24);
                            r9 = sign_extend_64(*(int8_t *)(r8 + 0x27));
                            if ((r9 & 0xffffffff80000000) == 0x0) {
                                    r26 = r9 & 0xff;
                            }
                            else {
                                    r26 = *(r8 + 0x18);
                            }
                            r9 = sign_extend_64(*(int8_t *)(r8 + 0x57));
                            if ((r9 & 0xffffffff80000000) == 0x0) {
                                    r23 = r9 & 0xff;
                            }
                            else {
                                    r23 = *(r8 + 0x48);
                            }
                            sub_100063f9c(r20, "[", 0x1);
                            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), "] (", 0x3);
                            r8 = *var_3F8;
                            r8 = *(r8 + r24);
                            r9 = sign_extend_64(*(int8_t *)(r8 + 0x27));
                            r0 = std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<();
                            r1 = ") ";
                            r27 = sub_100063f9c(r0, r1, 0x2);
                            sub_1009a56e4(*(*var_3F8 + r24) + 0x10);
                            r8 = var_3D9;
                            r10 = var_3F0;
                            r11 = stack[-1016];
                            r9 = &var_3F0;
                            if (sign_extend_64(r8) < 0x0) {
                                    if (!CPU_FLAGS & L) {
                                            r1 = r9;
                                    }
                                    else {
                                            r1 = r10;
                                    }
                            }
                            r2 = 0x2;
                            if (CPU_FLAGS & L) {
                                    if (!CPU_FLAGS & L) {
                                            r2 = r8;
                                    }
                                    else {
                                            r2 = r11;
                                    }
                            }
                            sub_100063f9c(sub_100063f9c(r27, r1, r2), "\n", 0x1);
                            if ((sign_extend_64(var_3D9) & 0xffffffff80000000) != 0x0) {
                                    operator delete(var_3F0);
                            }
                            r8 = *(r19 + 0x4610);
                            if ((*(int8_t *)(r8 + 0x40) & 0x10) != 0x0 && (*(int8_t *)(r8 + 0x44) & 0x10) != 0x0) {
                                    sub_100063f9c(r21, "[", 0x1);
                                    sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), "] (", 0x3);
                                    r8 = *var_3F8;
                                    r8 = *(r8 + r24);
                                    r9 = sign_extend_64(*(int8_t *)(r8 + 0x57));
                                    sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), ") [", 0x3);
                                    r27 = sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), "] ", 0x2);
                                    r8 = *var_3F8;
                                    r8 = *(r8 + r24);
                                    r1 = r8 + 0x40;
                                    if (*(int32_t *)(r8 + 0x58) == 0x1) {
                                            std::__1::basic_string<char, std::__1::char_traits<char>, std::__1::allocator<char> >::basic_string();
                                    }
                                    else {
                                            sub_1009a56e4(r1);
                                    }
                                    r8 = var_3D9;
                                    r10 = var_3F0;
                                    r11 = stack[-1016];
                                    r9 = &var_3F0;
                                    if (sign_extend_64(r8) < 0x0) {
                                            if (!CPU_FLAGS & L) {
                                                    r1 = r9;
                                            }
                                            else {
                                                    r1 = r10;
                                            }
                                    }
                                    r2 = 0x2;
                                    if (CPU_FLAGS & L) {
                                            if (!CPU_FLAGS & L) {
                                                    r2 = r8;
                                            }
                                            else {
                                                    r2 = r11;
                                            }
                                    }
                                    sub_100063f9c(sub_100063f9c(r27, r1, r2), "\n", 0x1);
                                    if ((sign_extend_64(var_3D9) & 0xffffffff80000000) != 0x0) {
                                            operator delete(var_3F0);
                                    }
                            }
                            r25 = r26 + r25;
                            r28 = r23 + r28;
                            r22 = r22 + 0x1;
                            r9 = *(r19 + 0x4460);
                            r8 = *(r19 + 0x4458);
                            r24 = r24 + 0x10;
                    } while (r22 < (r9 - r8) / 0x10);
            }
            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), " header bytes and ", 0x12);
            sub_100063f9c(std::__1::basic_ostream<char, std::__1::char_traits<char> >::operator<<(), " payload bytes", 0xe);
            r26 = var_408;
            r21 = var_400;
            sub_100063e7c(r26);
            r0 = sub_1009a4cc0(r20, 0x8, &var_3F0);
            if ((sign_extend_64(var_3D9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_3F0);
            }
            sub_100063e7c(r21);
            r21 = var_428;
            r0 = sub_1009a4cc0(r20, 0x8, &var_3F0);
            if ((sign_extend_64(var_3D9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_3F0);
            }
            sub_100063e7c(r21);
            r0 = sub_1009a4cc0(r20, 0x10, &var_3F0);
            if ((sign_extend_64(var_3D9) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_3F0);
            }
            r8 = *qword_100e609a8;
            r22 = r8 + 0x18;
            r23 = r8 + 0x68;
            r25 = *qword_100e60998 + 0x10;
            r24 = r8 + 0x40;
            if ((sign_extend_64(var_369) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_380);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            r20 = *qword_100e607d8 + 0x8;
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
            if ((sign_extend_64(var_251) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_268);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
            r20 = var_410;
            if ((sign_extend_64(var_131) & 0xffffffff80000000) != 0x0) {
                    operator delete(var_148);
            }
            std::__1::basic_streambuf<char, std::__1::char_traits<char> >::~basic_streambuf();
            std::__1::basic_iostream<char, std::__1::char_traits<char> >::~basic_iostream();
            std::__1::basic_ios<char, std::__1::char_traits<char> >::~basic_ios();
    }
    sub_10027c6f8(r29 - 0x88, r19 + 0x158);
    sub_1009a5840(r19, r19 + 0x4440, r29 - 0x88);
    r0 = var_70;
    if (r29 - 0x88 == r0) goto loc_1009a4974;

loc_1009a4964:
    if (r0 == 0x0) goto loc_1009a4980;

loc_1009a4968:
    r8 = *r0;
    r8 = *(r8 + 0x28);
    goto loc_1009a497c;

loc_1009a497c:
    r0 = (r8)();
    goto loc_1009a4980;

loc_1009a4980:
    if (**___stack_chk_guard != **___stack_chk_guard) {
            r0 = __stack_chk_fail();
    }
    return r0;

loc_1009a4974:
    r8 = *r0;
    r8 = *(r8 + 0x20);
    goto loc_1009a497c;

loc_1009a4250:
    r22 = *var_400;
    r23 = r9 - r22;
    r21 = SAR(r23, 0x4);
    r9 = r21 + 0x1;
    if (r9 >> 0x3c != 0x0) goto loc_1009a49bc;

loc_1009a426c:
    r8 = r8 - r22;
    r10 = SAR(r8, 0x3);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x7ffffffffffffff > r8 / 0x10) {
            if (!CPU_FLAGS & A) {
                    r20 = 0xfffffffffffffff;
            }
            else {
                    r20 = r9;
            }
    }
    if (r20 == 0x0) goto loc_1009a42a8;

loc_1009a4290:
    if (r20 >> 0x3c != 0x0) goto loc_1009a49d8;

loc_1009a4298:
    r24 = operator new();
    goto loc_1009a42ac;

loc_1009a42ac:
    r20 = r24 + r20 * 0x10;
    *(int128_t *)(r24 + r21 * 0x10) = r26;
    *(int128_t *)(0x8 + r24 + r21 * 0x10) = r27;
    r21 = 0x10 + r24 + r21 * 0x10;
    if (r23 >= 0x1) {
            memcpy(r24, r22, r23);
    }
    *(r19 + 0x4440) = r24;
    *(r19 + 0x4448) = r21;
    *(r19 + 0x4450) = r20;
    if (r22 != 0x0) {
            operator delete(r22);
    }
    goto loc_1009a42ec;

loc_1009a49d8:
    r0 = sub_1009a2054();
    return r0;

loc_1009a42a8:
    r24 = 0x0;
    goto loc_1009a42ac;

loc_1009a49bc:
    r0 = std::__1::__vector_base_common<true>::__throw_length_error();
    return r0;

loc_1009a417c:
    r22 = *var_400;
    r23 = r9 - r22;
    r21 = SAR(r23, 0x4);
    r9 = r21 + 0x1;
    if (r9 >> 0x3c != 0x0) goto loc_1009a49bc;

loc_1009a4198:
    r8 = r8 - r22;
    r10 = SAR(r8, 0x3);
    if (r10 < r9) {
            if (!CPU_FLAGS & B) {
                    r9 = r10;
            }
            else {
                    r9 = r9;
            }
    }
    if (0x7ffffffffffffff > r8 / 0x10) {
            if (!CPU_FLAGS & A) {
                    r20 = 0xfffffffffffffff;
            }
            else {
                    r20 = r9;
            }
    }
    if (r20 == 0x0) goto loc_1009a41d4;

loc_1009a41bc:
    if (r20 >> 0x3c != 0x0) goto loc_1009a49d8;

loc_1009a41c4:
    r24 = operator new();
    goto loc_1009a41d8;

loc_1009a41d8:
    r20 = r24 + r20 * 0x10;
    *(int128_t *)(r24 + r21 * 0x10) = r26;
    *(int128_t *)(0x8 + r24 + r21 * 0x10) = r27;
    r21 = 0x10 + r24 + r21 * 0x10;
    if (r23 >= 0x1) {
            memcpy(r24, r22, r23);
    }
    *(r19 + 0x4440) = r24;
    *(r19 + 0x4448) = r21;
    *(r19 + 0x4450) = r20;
    if (r22 != 0x0) {
            operator delete(r22);
    }
    goto loc_1009a4218;

loc_1009a41d4:
    r24 = 0x0;
    goto loc_1009a41d8;

loc_1009a402c:
    sub_1009a5408(r19);
    r8 = var_1A0;
    r9 = var_198;
    var_1A0 = 0x0;
    r22 = var_2B8;
    var_2C0 = r8;
    var_2B8 = r9;
    if (r22 != 0x0) {
            do {
                    asm { ldaxr      x9, [x8] };
                    r10 = r9 - 0x1;
                    asm { stlxr      w11, x10, [x8] };
            } while (r11 != 0x0);
            if (r9 == 0x0) {
                    (*(*r22 + 0x10))(r22);
                    std::__1::__shared_weak_count::__release_weak();
            }
    }
    var_198 = 0x0;
    r22 = var_198;
    if (r22 == 0x0) goto loc_1009a40bc;

loc_1009a4090:
    do {
            asm { ldaxr      x9, [x8] };
            r10 = r9 - 0x1;
            asm { stlxr      w11, x10, [x8] };
    } while (r11 != 0x0);
    goto loc_1009a40a0;

loc_1009a3f4c:
    r10 = *var_3F8;
    r27 = SAR(r8 - r10, 0x4);
    r8 = r27 + 0x1;
    r11 = r8 >> 0x3c;
    if (r11 != 0x0) goto loc_1009a49c4;

loc_1009a3f68:
    r9 = r9 - r10;
    r10 = SAR(r9, 0x3);
    if (r10 < r8) {
            if (!CPU_FLAGS & B) {
                    r8 = r10;
            }
            else {
                    r8 = r8;
            }
    }
    if (0x7ffffffffffffff > r9 / 0x10) {
            if (!CPU_FLAGS & A) {
                    r21 = 0xfffffffffffffff;
            }
            else {
                    r21 = r8;
            }
    }
    if (r21 == 0x0) goto loc_1009a3fa0;

loc_1009a3f8c:
    if (r21 >> 0x3c != 0x0) goto loc_1009a49d0;

loc_1009a3f94:
    r0 = operator new();
    goto loc_1009a3fa4;

loc_1009a3fa4:
    r8 = r0 + r27 * 0x10;
    var_198 = r8;
    var_190 = r8;
    r9 = var_2B8;
    *(int128_t *)r8 = r22;
    *(int128_t *)(r8 + 0x8) = r9;
    if (r9 != 0x0) {
            do {
                    asm { ldxr       x9, [x8] };
                    r9 = r9 + 0x1;
                    asm { stxr       w10, x9, [x8] };
            } while (r10 != 0x0);
            r8 = var_190;
    }
    sub_10052fe78(var_3F8, &var_1A0);
    r0 = sub_1009a5b60(&var_1A0);
    goto loc_1009a3ffc;

loc_1009a49d0:
    r0 = sub_1009a2054();
    return r0;

loc_1009a3fa0:
    r0 = 0x0;
    goto loc_1009a3fa4;

loc_1009a49c4:
    r0 = std::__1::__vector_base_common<true>::__throw_length_error();
    return r0;
}

function _ZNSt3__19to_stringEy {
    r0 = pointer to std::__1::to_string();
    return r0;
}

function glStencilOpSeparate {
    r0 = _glStencilOpSeparate_ptr(r0, r1, r2, r3);
    return r0;
}

function object_setIvar {
    r0 = _object_setIvar_ptr(r0, r1, r2);
    return r0;
}
