@implementation ISOrientationData

-(long long)currentDeviceOrientation {
    r0 = self->_currentDeviceOrientation;
    return r0;
}

-(void)setCurrentDeviceOrientation:(long long)arg2 {
    self->_currentDeviceOrientation = arg2;
    return;
}

-(void *)plistOrientation {
    r0 = self->_plistOrientation;
    return r0;
}

-(unsigned long long)windowOrientation {
    r0 = self->_windowOrientation;
    return r0;
}

-(void)setPlistOrientation:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_plistOrientation, arg2);
    return;
}

-(void)setWindowOrientation:(unsigned long long)arg2 {
    self->_windowOrientation = arg2;
    return;
}

-(unsigned long long)topMostViewControllerOrientation {
    r0 = self->_topMostViewControllerOrientation;
    return r0;
}

-(void)setTopMostViewControllerOrientation:(unsigned long long)arg2 {
    self->_topMostViewControllerOrientation = arg2;
    return;
}

-(bool)topMostViewControllerShouldAutorotate {
    r0 = *(int8_t *)(int64_t *)&self->_topMostViewControllerShouldAutorotate;
    return r0;
}

-(void)setTopMostViewControllerShouldAutorotate:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_topMostViewControllerShouldAutorotate = arg2;
    return;
}

-(long long)preferredInterfaceOrientationForPresentation {
    r0 = self->_preferredInterfaceOrientationForPresentation;
    return r0;
}

-(long long)statusBarOrientation {
    r0 = self->_statusBarOrientation;
    return r0;
}

-(void)setPreferredInterfaceOrientationForPresentation:(long long)arg2 {
    self->_preferredInterfaceOrientationForPresentation = arg2;
    return;
}

-(void)setStatusBarOrientation:(long long)arg2 {
    self->_statusBarOrientation = arg2;
    return;
}

-(bool)isWindowOrientationOverrided {
    r0 = *(int8_t *)(int64_t *)&self->_isWindowOrientationOverrided;
    return r0;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_plistOrientation, 0x0);
    return;
}

-(void)setIsWindowOrientationOverrided:(bool)arg2 {
    *(int8_t *)(int64_t *)&self->_isWindowOrientationOverrided = arg2;
    return;
}

-(void *)dictionaryRepresentation {
    r31 = r31 - 0x70;
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
    r20 = self;
    r19 = [NSMutableDictionary new];
    r22 = @class(NSString);
    [r20 currentDeviceOrientation];
    r24 = [[r22 stringWithFormat:@"%ld"] retain];
    [r19 setObject:r24 forKeyedSubscript:@"currentDeviceOrientation"];
    [r24 release];
    r24 = [[r20 plistOrientation] retain];
    [r19 setObject:r24 forKeyedSubscript:@"plistOrientation"];
    [r24 release];
    r24 = @class(NSString);
    [r20 windowOrientation];
    r24 = [[r24 stringWithFormat:@"%ld"] retain];
    [r19 setObject:r24 forKeyedSubscript:@"windowOrientation"];
    [r24 release];
    r24 = @class(NSString);
    [r20 topMostViewControllerOrientation];
    r0 = [r24 stringWithFormat:@"%ld"];
    r29 = &saved_fp;
    r24 = [r0 retain];
    [r19 setObject:r24 forKeyedSubscript:@"topMostViewControllerOrientation"];
    [r24 release];
    r8 = &@selector(methodParamsFromParams:);
    if (objc_msgSend(r20, *(r8 + 0x4a8)) != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"false";
            }
            else {
                    r8 = @"true";
            }
    }
    r25 = @class(NSString);
    r25 = [[r25 stringWithFormat:@"%@"] retain];
    [r19 setObject:r25 forKeyedSubscript:@"topMostViewControllerShouldAutorotate"];
    [r25 release];
    r25 = @class(NSString);
    [r20 preferredInterfaceOrientationForPresentation];
    r25 = [[r25 stringWithFormat:@"%ld"] retain];
    [r19 setObject:r25 forKeyedSubscript:@"preferredInterfaceOrientationForPresentation"];
    [r25 release];
    r25 = @class(NSString);
    [r20 statusBarOrientation];
    r0 = [r25 stringWithFormat:@"%ld"];
    r29 = r29;
    r23 = [r0 retain];
    [r19 setObject:r23 forKeyedSubscript:@"statusBarOrientation"];
    [r23 release];
    r8 = &@selector(bannerDidLoad:);
    if (objc_msgSend(r20, *(r8 + 0xe88)) != 0x0) {
            if (!CPU_FLAGS & NE) {
                    r8 = @"false";
            }
            else {
                    r8 = @"true";
            }
    }
    r20 = [[NSString stringWithFormat:@"%@"] retain];
    [r19 setObject:r20 forKeyedSubscript:@"isWindowOrientationOverrided"];
    [r20 release];
    r20 = [r19 copy];
    [r19 release];
    r0 = [r20 autorelease];
    return r0;
}

@end