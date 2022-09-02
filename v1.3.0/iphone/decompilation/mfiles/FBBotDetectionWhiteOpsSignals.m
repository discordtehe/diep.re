@implementation FBBotDetectionWhiteOpsSignals

+(void *)whiteOpsStringForSignalType:(unsigned long long)arg2 {
    r2 = arg2;
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    if (r2 > 0x2d) goto loc_100b878b0;

loc_100b8786c:
    if (r2 > 0x16) goto loc_100b878ec;

loc_100b87874:
    if (r2 <= 0xa) goto loc_100b87964;

loc_100b8787c:
    if (r2 > 0x10) goto loc_100b87a34;

loc_100b87884:
    if (r2 > 0xd) goto loc_100b87b94;

loc_100b8788c:
    if (r2 == 0xb) goto loc_100b87dbc;

loc_100b87894:
    if (r2 == 0xc) goto loc_100b87dc8;

loc_100b8789c:
    if (r2 != 0xd) goto loc_100b88084;

loc_100b878a4:
    r19 = @"location_services_status";
    goto loc_100b8807c;

loc_100b8807c:
    [r19 retain];
    goto loc_100b88084;

loc_100b88084:
    r0 = [r19 autorelease];
    return r0;

loc_100b87dc8:
    r19 = @"location_services_enabled";
    goto loc_100b8807c;

loc_100b87dbc:
    r19 = @"location_ranging";
    goto loc_100b8807c;

loc_100b87b94:
    if (r2 == 0xe) goto loc_100b87f3c;

loc_100b87b9c:
    if (r2 == 0xf) goto loc_100b87f48;

loc_100b87ba4:
    if (r2 != 0x10) goto loc_100b88084;

loc_100b87bac:
    r19 = @"network_operator";
    goto loc_100b8807c;

loc_100b87f48:
    r19 = @"network_capabilities_internet";
    goto loc_100b8807c;

loc_100b87f3c:
    r19 = @"music_active";
    goto loc_100b8807c;

loc_100b87a34:
    if (r2 > 0x13) goto loc_100b87cb4;

loc_100b87a3c:
    if (r2 == 0x11) goto loc_100b87e7c;

loc_100b87a44:
    if (r2 == 0x12) goto loc_100b87e88;

loc_100b87a4c:
    if (r2 != 0x13) goto loc_100b88084;

loc_100b87a54:
    r19 = @"network_type";
    goto loc_100b8807c;

loc_100b87e88:
    r19 = @"network_reachability_status";
    goto loc_100b8807c;

loc_100b87e7c:
    r19 = @"network_operator_name";
    goto loc_100b8807c;

loc_100b87cb4:
    if (r2 == 0x14) goto loc_100b87db0;

loc_100b87cbc:
    if (r2 == 0x15) goto loc_100b87ffc;

loc_100b87cc4:
    if (r2 != 0x16) goto loc_100b88084;

loc_100b87ccc:
    r19 = @"protected_data_available";
    goto loc_100b8807c;

loc_100b87ffc:
    r19 = @"process_thermal_state";
    goto loc_100b8807c;

loc_100b87db0:
    r19 = @"personal_hotspot_on";
    goto loc_100b8807c;

loc_100b87964:
    if (r2 <= 0x4) goto loc_100b87ae4;

loc_100b8796c:
    if (r2 > 0x7) goto loc_100b87c24;

loc_100b87974:
    if (r2 == 0x5) goto loc_100b87e1c;

loc_100b8797c:
    if (r2 == 0x6) goto loc_100b87e28;

loc_100b87984:
    if (r2 != 0x7) goto loc_100b88084;

loc_100b8798c:
    r19 = @"guided_access_enabled";
    goto loc_100b8807c;

loc_100b87e28:
    r19 = @"foundation_version";
    goto loc_100b8807c;

loc_100b87e1c:
    r19 = @"device_has_passcode";
    goto loc_100b8807c;

loc_100b87c24:
    if (r2 == 0x8) goto loc_100b87f9c;

loc_100b87c2c:
    if (r2 == 0x9) goto loc_100b87fa8;

loc_100b87c34:
    if (r2 != 0xa) goto loc_100b88084;

loc_100b87c3c:
    r19 = @"location_heading";
    goto loc_100b8807c;

loc_100b87fa8:
    r19 = @"is_low_power";
    goto loc_100b8807c;

loc_100b87f9c:
    r19 = @"idle_timer_disabled";
    goto loc_100b8807c;

loc_100b87ae4:
    if (r2 <= 0x1) goto loc_100b87d44;

loc_100b87aec:
    if (r2 == 0x2) goto loc_100b87edc;

loc_100b87af4:
    if (r2 == 0x3) goto loc_100b87ee8;

loc_100b87afc:
    if (r2 != 0x4) goto loc_100b88084;

loc_100b87b04:
    r19 = @"device_has_biometrics_auth";
    goto loc_100b8807c;

loc_100b87ee8:
    r19 = @"current_brightness";
    goto loc_100b8807c;

loc_100b87edc:
    r19 = @"battery_status";
    goto loc_100b8807c;

loc_100b87d44:
    if (r2 == 0x0) goto loc_100b88050;

loc_100b87d48:
    if (r2 != 0x1) goto loc_100b88084;

loc_100b87d50:
    r19 = @"battery_percentage";
    goto loc_100b8807c;

loc_100b88050:
    r19 = @"app_visible";
    goto loc_100b8807c;

loc_100b878ec:
    if (r2 <= 0x21) goto loc_100b879cc;

loc_100b878f4:
    if (r2 > 0x27) goto loc_100b87a8c;

loc_100b878fc:
    if (r2 > 0x24) goto loc_100b87bdc;

loc_100b87904:
    if (r2 == 0x22) goto loc_100b87dec;

loc_100b8790c:
    if (r2 == 0x23) goto loc_100b87df8;

loc_100b87914:
    if (r2 != 0x24) goto loc_100b88084;

loc_100b8791c:
    r19 = @"app_build";
    goto loc_100b8807c;

loc_100b87df8:
    r19 = @"camera_front";
    goto loc_100b8807c;

loc_100b87dec:
    r19 = @"boot_date";
    goto loc_100b8807c;

loc_100b87bdc:
    if (r2 == 0x25) goto loc_100b87f6c;

loc_100b87be4:
    if (r2 == 0x26) goto loc_100b87f78;

loc_100b87bec:
    if (r2 != 0x27) goto loc_100b88084;

loc_100b87bf4:
    r19 = @"simulator_build";
    goto loc_100b8807c;

loc_100b87f78:
    r19 = @"sensor_step_count";
    goto loc_100b8807c;

loc_100b87f6c:
    r19 = @"device_name";
    goto loc_100b8807c;

loc_100b87a8c:
    if (r2 > 0x2a) goto loc_100b87cfc;

loc_100b87a94:
    if (r2 == 0x28) goto loc_100b87eac;

loc_100b87a9c:
    if (r2 == 0x29) goto loc_100b87eb8;

loc_100b87aa4:
    if (r2 != 0x2a) goto loc_100b88084;

loc_100b87aac:
    r19 = @"ip_addresses";
    goto loc_100b8807c;

loc_100b87eb8:
    r19 = @"sensor_magnetometer";
    goto loc_100b8807c;

loc_100b87eac:
    r19 = @"app_public_path";
    goto loc_100b8807c;

loc_100b87cfc:
    if (r2 == 0x2b) goto loc_100b88020;

loc_100b87d04:
    if (r2 == 0x2c) goto loc_100b8802c;

loc_100b87d0c:
    if (r2 != 0x2d) goto loc_100b88084;

loc_100b87d14:
    r19 = @"display_width_pixels";
    goto loc_100b8807c;

loc_100b8802c:
    r19 = @"sim_country";
    goto loc_100b8807c;

loc_100b88020:
    r19 = @"system_os_version";
    goto loc_100b8807c;

loc_100b879cc:
    if (r2 <= 0x1b) goto loc_100b87b3c;

loc_100b879d4:
    if (r2 > 0x1e) goto loc_100b87c6c;

loc_100b879dc:
    if (r2 == 0x1c) goto loc_100b87e4c;

loc_100b879e4:
    if (r2 == 0x1d) goto loc_100b87e58;

loc_100b879ec:
    if (r2 != 0x1e) goto loc_100b88084;

loc_100b879f4:
    r19 = @"uptime";
    goto loc_100b8807c;

loc_100b87e58:
    r19 = @"touch";
    goto loc_100b8807c;

loc_100b87e4c:
    r19 = @"total_memory";
    goto loc_100b8807c;

loc_100b87c6c:
    if (r2 == 0x1f) goto loc_100b87fcc;

loc_100b87c74:
    if (r2 == 0x20) goto loc_100b87fd8;

loc_100b87c7c:
    if (r2 != 0x21) goto loc_100b88084;

loc_100b87c84:
    r19 = @"app_version";
    goto loc_100b8807c;

loc_100b87fd8:
    r19 = @"wired_headset";
    goto loc_100b8807c;

loc_100b87fcc:
    r19 = @"wifi_ssid";
    goto loc_100b8807c;

loc_100b87b3c:
    if (r2 <= 0x18) goto loc_100b87d78;

loc_100b87b44:
    if (r2 == 0x19) goto loc_100b87f0c;

loc_100b87b4c:
    if (r2 == 0x1a) goto loc_100b87f18;

loc_100b87b54:
    if (r2 != 0x1b) goto loc_100b88084;

loc_100b87b5c:
    r19 = @"time_zone";
    goto loc_100b8807c;

loc_100b87f18:
    r19 = @"system_uptime";
    goto loc_100b8807c;

loc_100b87f0c:
    r19 = @"sensor_pedometer_event_tracking";
    goto loc_100b8807c;

loc_100b87d78:
    if (r2 == 0x17) goto loc_100b88068;

loc_100b87d80:
    if (r2 != 0x18) goto loc_100b88084;

loc_100b87d88:
    r19 = @"secondary_audio_playing";
    goto loc_100b8807c;

loc_100b88068:
    r19 = @"proxy";
    goto loc_100b8807c;

loc_100b878b0:
    if (r2 > 0x44) goto loc_100b87928;

loc_100b878b8:
    if (r2 <= 0x38) goto loc_100b87998;

loc_100b878c0:
    if (r2 > 0x3e) goto loc_100b87a60;

loc_100b878c8:
    if (r2 > 0x3b) goto loc_100b87bb8;

loc_100b878d0:
    if (r2 == 0x39) goto loc_100b87dd4;

loc_100b878d8:
    if (r2 == 0x3a) goto loc_100b87de0;

loc_100b878e0:
    if (r2 == 0x3b) goto loc_100b87db0;
    goto loc_100b88084;

loc_100b87de0:
    r19 = @"locale_id";
    goto loc_100b8807c;

loc_100b87dd4:
    r19 = @"telephony_present";
    goto loc_100b8807c;

loc_100b87bb8:
    if (r2 == 0x3c) goto loc_100b87f54;

loc_100b87bc0:
    if (r2 == 0x3d) goto loc_100b87f60;

loc_100b87bc8:
    if (r2 != 0x3e) goto loc_100b88084;

loc_100b87bd0:
    r19 = @"has_embedded_mobileprovision";
    goto loc_100b8807c;

loc_100b87f60:
    r19 = @"sensor_floor_counting";
    goto loc_100b8807c;

loc_100b87f54:
    r19 = @"wmode";
    goto loc_100b8807c;

loc_100b87a60:
    if (r2 > 0x41) goto loc_100b87cd8;

loc_100b87a68:
    if (r2 == 0x3f) goto loc_100b87e94;

loc_100b87a70:
    if (r2 == 0x40) goto loc_100b87ea0;

loc_100b87a78:
    if (r2 != 0x41) goto loc_100b88084;

loc_100b87a80:
    r19 = @"build_sdk_name";
    goto loc_100b8807c;

loc_100b87ea0:
    r19 = @"ts";
    goto loc_100b8807c;

loc_100b87e94:
    r19 = @"sensor_distance";
    goto loc_100b8807c;

loc_100b87cd8:
    if (r2 == 0x42) goto loc_100b88008;

loc_100b87ce0:
    if (r2 == 0x43) goto loc_100b88014;

loc_100b87ce8:
    if (r2 != 0x44) goto loc_100b88084;

loc_100b87cf0:
    r19 = @"architectures";
    goto loc_100b8807c;

loc_100b88014:
    r19 = @"audio_devices";
    goto loc_100b8807c;

loc_100b88008:
    r19 = @"display_height_pixels";
    goto loc_100b8807c;

loc_100b87998:
    if (r2 <= 0x32) goto loc_100b87b10;

loc_100b879a0:
    if (r2 > 0x35) goto loc_100b87c48;

loc_100b879a8:
    if (r2 == 0x33) goto loc_100b87e34;

loc_100b879b0:
    if (r2 == 0x34) goto loc_100b87e40;

loc_100b879b8:
    if (r2 != 0x35) goto loc_100b88084;

loc_100b879c0:
    r19 = @"overlapping_decision_count";
    goto loc_100b8807c;

loc_100b87e40:
    r19 = @"uidevice_system_name";
    goto loc_100b8807c;

loc_100b87e34:
    r19 = @"sensor_pace";
    goto loc_100b8807c;

loc_100b87c48:
    if (r2 == 0x36) goto loc_100b87fb4;

loc_100b87c50:
    if (r2 == 0x37) goto loc_100b87fc0;

loc_100b87c58:
    if (r2 != 0x38) goto loc_100b88084;

loc_100b87c60:
    r19 = @"uidevice_system_version";
    goto loc_100b8807c;

loc_100b87fc0:
    r19 = @"app_package_name";
    goto loc_100b8807c;

loc_100b87fb4:
    r19 = @"sim_operator_name";
    goto loc_100b8807c;

loc_100b87b10:
    if (r2 <= 0x2f) goto loc_100b87d5c;

loc_100b87b18:
    if (r2 == 0x30) goto loc_100b87ef4;

loc_100b87b20:
    if (r2 == 0x31) goto loc_100b87f00;

loc_100b87b28:
    if (r2 != 0x32) goto loc_100b88084;

loc_100b87b30:
    r19 = @"build_minimum_os_version";
    goto loc_100b8807c;

loc_100b87f00:
    r19 = @"has_sandbox_receipt";
    goto loc_100b8807c;

loc_100b87ef4:
    r19 = @"sensor_gyro";
    goto loc_100b8807c;

loc_100b87d5c:
    if (r2 == 0x2e) goto loc_100b8805c;

loc_100b87d64:
    if (r2 != 0x2f) goto loc_100b88084;

loc_100b87d6c:
    r19 = @"app_size";
    goto loc_100b8807c;

loc_100b8805c:
    r19 = @"build_sdk";
    goto loc_100b8807c;

loc_100b87928:
    if (r2 <= 0x4f) goto loc_100b87a00;

loc_100b87930:
    if (r2 > 0x55) goto loc_100b87ab8;

loc_100b87938:
    if (r2 > 0x52) goto loc_100b87c00;

loc_100b87940:
    if (r2 == 0x50) goto loc_100b87e04;

loc_100b87948:
    if (r2 == 0x51) goto loc_100b87e10;

loc_100b87950:
    if (r2 != 0x52) goto loc_100b88084;

loc_100b87958:
    r19 = @"locale_language";
    goto loc_100b8807c;

loc_100b87e10:
    r19 = @"time_zone_name";
    goto loc_100b8807c;

loc_100b87e04:
    r19 = @"simulator_properties";
    goto loc_100b8807c;

loc_100b87c00:
    if (r2 == 0x53) goto loc_100b87f84;

loc_100b87c08:
    if (r2 == 0x54) goto loc_100b87f90;

loc_100b87c10:
    if (r2 != 0x55) goto loc_100b88084;

loc_100b87c18:
    r19 = @"process_id";
    goto loc_100b8807c;

loc_100b87f90:
    r19 = @"battery_monitoring";
    goto loc_100b8807c;

loc_100b87f84:
    r19 = @"locale_calendar";
    goto loc_100b8807c;

loc_100b87ab8:
    if (r2 > 0x58) goto loc_100b87d20;

loc_100b87ac0:
    if (r2 == 0x56) goto loc_100b87ec4;

loc_100b87ac8:
    if (r2 == 0x57) goto loc_100b87ed0;

loc_100b87ad0:
    if (r2 != 0x58) goto loc_100b88084;

loc_100b87ad8:
    r19 = @"processors";
    goto loc_100b8807c;

loc_100b87ed0:
    r19 = @"locale_country";
    goto loc_100b8807c;

loc_100b87ec4:
    r19 = @"sensor_cadence";
    goto loc_100b8807c;

loc_100b87d20:
    if (r2 == 0x59) goto loc_100b88038;

loc_100b87d28:
    if (r2 == 0x5a) goto loc_100b88044;

loc_100b87d30:
    if (r2 != 0x5b) goto loc_100b88084;

loc_100b87d38:
    r19 = @"device_rooted";
    goto loc_100b8807c;

loc_100b88044:
    r19 = @"fb_sdk_version";
    goto loc_100b8807c;

loc_100b88038:
    r19 = @"wo_ssid";
    goto loc_100b8807c;

loc_100b87a00:
    if (r2 <= 0x49) goto loc_100b87b68;

loc_100b87a08:
    if (r2 > 0x4c) goto loc_100b87c90;

loc_100b87a10:
    if (r2 == 0x4a) goto loc_100b87e64;

loc_100b87a18:
    if (r2 == 0x4b) goto loc_100b87e70;

loc_100b87a20:
    if (r2 != 0x4c) goto loc_100b88084;

loc_100b87a28:
    r19 = @"display_density";
    goto loc_100b8807c;

loc_100b87e70:
    r19 = @"sensor_accelerometer";
    goto loc_100b8807c;

loc_100b87e64:
    r19 = @"camera_rear";
    goto loc_100b8807c;

loc_100b87c90:
    if (r2 == 0x4d) goto loc_100b87fe4;

loc_100b87c98:
    if (r2 == 0x4e) goto loc_100b87ff0;

loc_100b87ca0:
    if (r2 != 0x4f) goto loc_100b88084;

loc_100b87ca8:
    r19 = @"main_bundle";
    goto loc_100b8807c;

loc_100b87ff0:
    r19 = @"sensor_altimeter";
    goto loc_100b8807c;

loc_100b87fe4:
    r19 = @"allows_voip";
    goto loc_100b8807c;

loc_100b87b68:
    if (r2 <= 0x46) goto loc_100b87d94;

loc_100b87b70:
    if (r2 == 0x47) goto loc_100b87f24;

loc_100b87b78:
    if (r2 == 0x48) goto loc_100b87f30;

loc_100b87b80:
    if (r2 != 0x49) goto loc_100b88084;

loc_100b87b88:
    r19 = @"active_processor_count";
    goto loc_100b8807c;

loc_100b87f30:
    r19 = @"environment";
    goto loc_100b8807c;

loc_100b87f24:
    r19 = @"process_name";
    goto loc_100b8807c;

loc_100b87d94:
    if (r2 == 0x45) goto loc_100b88074;

loc_100b87d9c:
    if (r2 != 0x46) goto loc_100b88084;

loc_100b87da4:
    r19 = @"build_time";
    goto loc_100b8807c;

loc_100b88074:
    r19 = @"camera_flash";
    goto loc_100b8807c;
}

+(void)initialize {
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
    r31 = r31 + 0xffffffffffffffa0 - 0x4a0;
    r0 = [FBBotDetectionWhiteOpsSignals self];
    r29 = &saved_fp;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == self) {
            var_398 = [NSSet alloc];
            var_350 = [@(0x0) retain];
            var_358 = [@(0x1) retain];
            var_360 = [@(0x2) retain];
            var_378 = [@(0x3) retain];
            var_380 = [@(0x4) retain];
            var_388 = [@(0x5) retain];
            var_390 = [@(0x6) retain];
            var_3A0 = [@(0x7) retain];
            var_3A8 = [@(0x8) retain];
            var_3B0 = [@(0x9) retain];
            var_3B8 = [@(0xa) retain];
            var_3C0 = [@(0xb) retain];
            var_3C8 = [@(0xc) retain];
            var_3D0 = [@(0xd) retain];
            var_3D8 = [@(0xe) retain];
            var_3E0 = [@(0xf) retain];
            var_3E8 = [@(0x10) retain];
            var_3F0 = [@(0x11) retain];
            var_3F8 = [@(0x12) retain];
            var_400 = [@(0x13) retain];
            var_408 = [@(0x14) retain];
            var_410 = [@(0x15) retain];
            var_418 = [@(0x16) retain];
            var_420 = [@(0x17) retain];
            var_428 = [@(0x18) retain];
            var_430 = [@(0x19) retain];
            var_438 = [@(0x1a) retain];
            r21 = [@(0x1b) retain];
            r22 = [@(0x51) retain];
            r23 = [@(0x1c) retain];
            r24 = [@(0x1d) retain];
            r25 = [@(0x1e) retain];
            r26 = [@(0x1f) retain];
            r27 = [@(0x20) retain];
            r28 = [[NSArray arrayWithObjects:&var_170 count:0x22] retain];
            r0 = [var_398 initWithArray:r28];
            r8 = *0x1011dea20;
            *0x1011dea20 = r0;
            [r8 release];
            [r28 release];
            [r27 release];
            [r26 release];
            [r25 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
            [var_438 release];
            [var_430 release];
            [var_428 release];
            [var_420 release];
            [var_418 release];
            [var_410 release];
            [var_408 release];
            [var_400 release];
            [var_3F8 release];
            [var_3F0 release];
            [var_3E8 release];
            [var_3E0 release];
            [var_3D8 release];
            [var_3D0 release];
            [var_3C8 release];
            [var_3C0 release];
            [var_3B8 release];
            [var_3B0 release];
            [var_3A8 release];
            [var_3A0 release];
            [var_390 release];
            [var_388 release];
            [var_380 release];
            [var_378 release];
            [var_360 release];
            [var_358 release];
            [var_350 release];
            var_3B0 = [NSSet alloc];
            var_348 = [@(0x21) retain];
            var_350 = [@(0x22) retain];
            var_358 = [@(0x23) retain];
            var_360 = [@(0x24) retain];
            var_378 = [@(0x25) retain];
            var_380 = [@(0x26) retain];
            var_388 = [@(0x27) retain];
            var_390 = [@(0x40) retain];
            var_398 = [@(0x54) retain];
            var_3A0 = [@(0x28) retain];
            var_3A8 = [@(0x29) retain];
            var_3B8 = [@(0x2a) retain];
            var_3C0 = [@(0x2b) retain];
            var_3C8 = [@(0x2c) retain];
            var_3D0 = [@(0x2d) retain];
            var_3D8 = [@(0x2e) retain];
            var_3E0 = [@(0x2f) retain];
            var_3E8 = [@(0x30) retain];
            var_3F0 = [@(0x31) retain];
            var_3F8 = [@(0x32) retain];
            var_400 = [@(0x33) retain];
            var_408 = [@(0x34) retain];
            var_410 = [@(0x35) retain];
            var_418 = [@(0x36) retain];
            var_420 = [@(0x37) retain];
            var_428 = [@(0x38) retain];
            var_430 = [@(0x39) retain];
            var_438 = [@(0x3a) retain];
            var_440 = [@(0x3b) retain];
            var_448 = [@(0x3c) retain];
            var_450 = [@(0x3d) retain];
            var_458 = [@(0x3e) retain];
            var_460 = [@(0x3f) retain];
            var_468 = [@(0x41) retain];
            var_470 = [@(0x42) retain];
            var_478 = [@(0x43) retain];
            var_480 = [@(0x44) retain];
            var_488 = [@(0x45) retain];
            var_490 = [@(0x46) retain];
            var_498 = [@(0x47) retain];
            var_4A0 = [@(0x48) retain];
            var_4A8 = [@(0x49) retain];
            var_4B0 = [@(0x4a) retain];
            var_4B8 = [@(0x4b) retain];
            var_4C0 = [@(0x4c) retain];
            var_4C8 = [@(0x4d) retain];
            var_4D0 = [@(0x4e) retain];
            var_4D8 = [@(0x4f) retain];
            var_4E0 = [@(0x50) retain];
            var_4E8 = [@(0x52) retain];
            r27 = [@(0x53) retain];
            r28 = [@(0x55) retain];
            r26 = [@(0x56) retain];
            r21 = [@(0x57) retain];
            r22 = [@(0x58) retain];
            r23 = [@(0x59) retain];
            r24 = [@(0x5a) retain];
            r19 = [@(0x5b) retain];
            r0 = [NSArray arrayWithObjects:&stack[-848] count:0x3a];
            r25 = [r0 retain];
            r0 = [var_3B0 initWithArray:r25];
            r8 = *0x1011dea28;
            *0x1011dea28 = r0;
            [r8 release];
            [r25 release];
            [r19 release];
            [r24 release];
            [r23 release];
            [r22 release];
            [r21 release];
            [r26 release];
            [r28 release];
            [r27 release];
            [var_4E8 release];
            [var_4E0 release];
            [var_4D8 release];
            [var_4D0 release];
            [var_4C8 release];
            [var_4C0 release];
            [var_4B8 release];
            [var_4B0 release];
            [var_4A8 release];
            [var_4A0 release];
            [var_498 release];
            [var_490 release];
            [var_488 release];
            [var_480 release];
            [var_478 release];
            [var_470 release];
            [var_468 release];
            [var_460 release];
            [var_458 release];
            [var_450 release];
            [var_448 release];
            [var_440 release];
            [var_438 release];
            [var_430 release];
            [var_428 release];
            [var_420 release];
            [var_418 release];
            [var_410 release];
            [var_408 release];
            [var_400 release];
            [var_3F8 release];
            [var_3F0 release];
            [var_3E8 release];
            [var_3E0 release];
            [var_3D8 release];
            [var_3D0 release];
            [var_3C8 release];
            [var_3C0 release];
            [var_3B8 release];
            [var_3A8 release];
            [var_3A0 release];
            [var_398 release];
            [var_390 release];
            [var_388 release];
            [var_380 release];
            [var_378 release];
            [var_360 release];
            [var_358 release];
            [var_350 release];
            [var_348 release];
    }
    if (**___stack_chk_guard != **___stack_chk_guard) {
            __stack_chk_fail();
    }
    return;
}

@end