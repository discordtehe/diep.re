@implementation TR_DDAbstractDatabaseLogger

-(void *)init {
    r31 = r31 - 0x20;
    saved_fp = r29;
    stack[-8] = r30;
    r0 = [[&var_10 super] init];
    if (r0 != 0x0) {
            r0->_saveThreshold = 0x1f4;
            r0->_saveInterval = 0x404e000000000000;
            r0->_maxAge = 0x4122750000000000;
            r0->_deleteInterval = 0x4072c00000000000;
    }
    return r0;
}

-(void)dealloc {
    [self destroySaveTimer];
    [self destroyDeleteTimer];
    [[&var_20 super] dealloc];
    return;
}

-(bool)db_log:(void *)arg2 {
    return 0x0;
}

-(void)db_save {
    return;
}

-(void)db_delete {
    return;
}

-(void)db_saveAndDelete {
    return;
}

-(void)performDelete {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if (r19->_maxAge > 0x0) {
            [r19 db_delete];
            r19->_lastDeleteTime = dispatch_time(0x0, 0x0);
    }
    return;
}

-(void)performSaveAndSuspendSaveTimer {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_unsavedCount));
    if (*(r19 + r20) != 0x0) {
            if (*(int8_t *)(int64_t *)&r19->_deleteOnEverySave != 0x0) {
                    r1 = @selector(db_saveAndDelete);
            }
            else {
                    r1 = @selector(db_save);
            }
            objc_msgSend(r19, r1);
    }
    *(r19 + r20) = 0x0;
    r19->_unsavedTime = 0x0;
    r0 = r19->_saveTimer;
    if (r0 != 0x0) {
            r20 = sign_extend_64(*(int32_t *)ivar_offset(_saveTimerSuspended));
            if (*(int8_t *)(r19 + r20) == 0x0) {
                    dispatch_suspend(r0);
                    *(int8_t *)(r19 + r20) = 0x1;
            }
    }
    return;
}

-(void)destroySaveTimer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_saveTimer));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            dispatch_source_cancel(r0);
            r21 = sign_extend_64(*(int32_t *)ivar_offset(_saveTimerSuspended));
            if (*(int8_t *)(r19 + r21) != 0x0) {
                    dispatch_resume(*(r19 + r20));
                    *(int8_t *)(r19 + r21) = 0x0;
            }
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void)updateAndResumeSaveTimer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_saveTimer));
    if (*(r19 + r21) != 0x0) {
            d0 = r19->_saveInterval;
            if (d0 > 0x0) {
                    r0 = r19->_unsavedTime;
                    if (r0 != 0x0) {
                            asm { fcvtzu     x20, d0 };
                            dispatch_source_set_timer(*(r19 + r21), dispatch_time(r0, r20), r20, 0x1);
                            r20 = sign_extend_64(*(int32_t *)ivar_offset(_saveTimerSuspended));
                            if (*(int8_t *)(r19 + r20) != 0x0) {
                                    dispatch_resume(*(r19 + r21));
                                    *(int8_t *)(r19 + r20) = 0x0;
                            }
                    }
            }
    }
    return;
}

-(void)createSuspendedSaveTimer {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_saveTimer));
    if (*(r19 + r21) == 0x0 && r19->_saveInterval > 0x0) {
            r20 = [[r19 loggerQueue] retain];
            r0 = *__dispatch_source_type_timer;
            r0 = dispatch_source_create(r0, 0x0, 0x0, r20);
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r20 release];
            dispatch_source_set_event_handler(*(r19 + r21), &var_48);
            *(int8_t *)(int64_t *)&r19->_saveTimerSuspended = 0x1;
    }
    return;
}

-(void)destroyDeleteTimer {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r20 = sign_extend_64(*(int32_t *)ivar_offset(_deleteTimer));
    r0 = *(r19 + r20);
    if (r0 != 0x0) {
            dispatch_source_cancel(r0);
            r0 = *(r19 + r20);
            *(r19 + r20) = 0x0;
            [r0 release];
    }
    return;
}

-(void)updateDeleteTimer {
    var_20 = r22;
    stack[-40] = r21;
    r31 = r31 + 0xffffffffffffffd0;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_deleteTimer));
    if (*(r19 + r21) != 0x0) {
            d0 = r19->_deleteInterval;
            if (d0 > 0x0 && r19->_maxAge > 0x0) {
                    asm { fcvtzu     x20, d0 };
                    dispatch_source_set_timer(*(r19 + r21), dispatch_time(r19->_lastDeleteTime, r20), r20, 0x1);
            }
    }
    return;
}

-(void)createAndStartDeleteTimer {
    r31 = r31 - 0x60;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = self;
    r21 = sign_extend_64(*(int32_t *)ivar_offset(_deleteTimer));
    if (r19->_maxAge > 0x0 && *(r19 + r21) == 0x0 && r19->_deleteInterval > 0x0) {
            r20 = [[r19 loggerQueue] retain];
            r0 = *__dispatch_source_type_timer;
            r0 = dispatch_source_create(r0, 0x0, 0x0, r20);
            r8 = *(r19 + r21);
            *(r19 + r21) = r0;
            [r8 release];
            [r20 release];
            r0 = *(r19 + r21);
            if (r0 != 0x0) {
                    dispatch_source_set_event_handler(r0, &var_48);
                    [r19 updateDeleteTimer];
                    r0 = *(r19 + r21);
                    if (r0 != 0x0) {
                            dispatch_resume(r0);
                    }
            }
    }
    return;
}

-(unsigned long long)saveThreshold {
    r0 = [TR_DDLog loggingQueue];
    r0 = [r0 retain];
    dispatch_sync(r0, &var_60);
    _Block_object_dispose(&var_30, 0x8);
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)setSaveThreshold:(unsigned long long)arg2 {
    r31 = r31 - 0xa0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = objc_retainBlock(&var_60);
    r19 = r0;
    if ([r20 isOnInternalLoggerQueue] != 0x0) {
            (*(r19 + 0x10))(r19);
    }
    else {
            r21 = [[TR_DDLog loggingQueue] retain];
            var_68 = [r19 retain];
            dispatch_async(r21, &var_90);
            [var_68 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(double)saveInterval {
    r0 = [TR_DDLog loggingQueue];
    r0 = [r0 retain];
    dispatch_sync(r0, &var_70);
    _Block_object_dispose(&var_40, 0x8);
    r0 = [r20 release];
    return r0;
}

-(void)setSaveInterval:(double)arg2 {
    r31 = r31 - 0xa0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = objc_retainBlock(&var_60);
    r19 = r0;
    if ([r20 isOnInternalLoggerQueue] != 0x0) {
            (*(r19 + 0x10))(r19);
    }
    else {
            r21 = [[TR_DDLog loggingQueue] retain];
            var_68 = [r19 retain];
            dispatch_async(r21, &var_90);
            [var_68 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(double)maxAge {
    r0 = [TR_DDLog loggingQueue];
    r0 = [r0 retain];
    dispatch_sync(r0, &var_70);
    _Block_object_dispose(&var_40, 0x8);
    r0 = [r20 release];
    return r0;
}

-(void)setMaxAge:(double)arg2 {
    r31 = r31 - 0xa0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = objc_retainBlock(&var_60);
    r19 = r0;
    if ([r20 isOnInternalLoggerQueue] != 0x0) {
            (*(r19 + 0x10))(r19);
    }
    else {
            r21 = [[TR_DDLog loggingQueue] retain];
            var_68 = [r19 retain];
            dispatch_async(r21, &var_90);
            [var_68 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(double)deleteInterval {
    r0 = [TR_DDLog loggingQueue];
    r0 = [r0 retain];
    dispatch_sync(r0, &var_70);
    _Block_object_dispose(&var_40, 0x8);
    r0 = [r20 release];
    return r0;
}

-(void)setDeleteInterval:(double)arg2 {
    r31 = r31 - 0xa0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = objc_retainBlock(&var_60);
    r19 = r0;
    if ([r20 isOnInternalLoggerQueue] != 0x0) {
            (*(r19 + 0x10))(r19);
    }
    else {
            r21 = [[TR_DDLog loggingQueue] retain];
            var_68 = [r19 retain];
            dispatch_async(r21, &var_90);
            [var_68 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(bool)deleteOnEverySave {
    r0 = [TR_DDLog loggingQueue];
    r0 = [r0 retain];
    dispatch_sync(r0, &var_60);
    _Block_object_dispose(&var_30, 0x8);
    [r20 release];
    r0 = r19;
    return r0;
}

-(void)setDeleteOnEverySave:(bool)arg2 {
    r31 = r31 - 0xa0;
    var_30 = d9;
    stack[-56] = d8;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = objc_retainBlock(&var_60);
    r19 = r0;
    if ([r20 isOnInternalLoggerQueue] != 0x0) {
            (*(r19 + 0x10))(r19);
    }
    else {
            r21 = [[TR_DDLog loggingQueue] retain];
            var_68 = [r19 retain];
            dispatch_async(r21, &var_90);
            [var_68 release];
            [r21 release];
    }
    [r19 release];
    return;
}

-(void)savePendingLogEntries {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = objc_retainBlock(&var_38);
    r19 = r0;
    if ([r20 isOnInternalLoggerQueue] != 0x0) {
            (*(r19 + 0x10))(r19);
    }
    else {
            r0 = [r20 loggerQueue];
            r0 = [r0 retain];
            dispatch_async(r0, r19);
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)deleteOldLogEntries {
    r31 = r31 - 0x50;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r20 = self;
    r0 = objc_retainBlock(&var_38);
    r19 = r0;
    if ([r20 isOnInternalLoggerQueue] != 0x0) {
            (*(r19 + 0x10))(r19);
    }
    else {
            r0 = [r20 loggerQueue];
            r0 = [r0 retain];
            dispatch_async(r0, r19);
            [r20 release];
    }
    [r19 release];
    return;
}

-(void)didAddLogger {
    [self createSuspendedSaveTimer];
    [self createAndStartDeleteTimer];
    return;
}

-(void)willRemoveLogger {
    [self performSaveAndSuspendSaveTimer];
    [self destroySaveTimer];
    [self destroyDeleteTimer];
    return;
}

-(void)logMessage:(void *)arg2 {
    var_10 = r20;
    stack[-24] = r19;
    r31 = r31 + 0xffffffffffffffe0;
    saved_fp = r29;
    stack[-8] = r30;
    r19 = self;
    if ([self db_log:arg2] == 0x0) goto .l1;

loc_1003efe68:
    r9 = sign_extend_64(*(int32_t *)ivar_offset(_unsavedCount));
    r8 = *(r19 + r9);
    *(r19 + r9) = r8 + 0x1;
    if (r19->_saveThreshold - 0x1 >= r8 + 0x1) goto loc_1003efea0;

loc_1003efe94:
    r1 = @selector(performSaveAndSuspendSaveTimer);
    goto loc_1003efed0;

loc_1003efed0:
    objc_msgSend(r19, r1);
    return;

.l1:
    return;

loc_1003efea0:
    if (r8 == 0x0) goto loc_1003efeb0;
    goto .l1;

loc_1003efeb0:
    r19->_unsavedTime = dispatch_time(0x0, 0x0);
    r1 = @selector(updateAndResumeSaveTimer);
    goto loc_1003efed0;
}

-(void)flush {
    [self performSaveAndSuspendSaveTimer];
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_deleteTimer, 0x0);
    objc_storeStrong((int64_t *)&self->_saveTimer, 0x0);
    return;
}

@end