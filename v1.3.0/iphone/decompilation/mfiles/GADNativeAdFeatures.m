@implementation GADNativeAdFeatures

-(void *)initWithAdConfiguration:(void *)arg2 {
    r31 = r31 - 0x50;
    var_30 = r24;
    stack[-56] = r23;
    var_20 = r22;
    stack[-40] = r21;
    var_10 = r20;
    stack[-24] = r19;
    saved_fp = r29;
    stack[-8] = r30;
    r29 = &saved_fp;
    r19 = [arg2 retain];
    r0 = [[&var_40 super] init];
    r20 = r0;
    if (r20 != 0x0) {
            r0 = [r19 objectForKeyedSubscript:@"allow_pub_owned_ad_view"];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r20->_publisherOwnedAdViewAllowed = [r0 boolValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"allow_pub_rendered_attribution"];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r20->_publisherRenderAdChoicesAllowed = [r0 boolValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"allow_pub_event_reporting"];
            r0 = [r0 retain];
            r23 = r0;
            r0 = [r0 objectForKeyedSubscript:@"click_reporting"];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r20->_publisherClickReportingAllowed = [r0 boolValue];
            [r0 release];
            r0 = [r23 objectForKeyedSubscript:@"touch_reporting"];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r20->_publisherTouchReportingAllowed = [r0 boolValue];
            [r0 release];
            r0 = [r23 objectForKeyedSubscript:@"impression_reporting"];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r20->_publisherImpressionReportingAllowed = [r0 boolValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"custom_one_point_five_click_enabled"];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r20->_customOnePointFiveClickWhitelisted = [r0 boolValue];
            [r0 release];
            r0 = [r19 objectForKeyedSubscript:@"allow_custom_click_gesture"];
            r0 = [r0 retain];
            *(int8_t *)(int64_t *)&r20->_customClickGestureAllowed = [r0 boolValue];
            [r0 release];
            [r23 release];
    }
    [r19 release];
    r0 = r20;
    return r0;
}

-(bool)publisherTouchReportingAllowed {
    r0 = *(int8_t *)(int64_t *)&self->_publisherTouchReportingAllowed;
    return r0;
}

-(bool)publisherClickReportingAllowed {
    r0 = *(int8_t *)(int64_t *)&self->_publisherClickReportingAllowed;
    return r0;
}

-(bool)publisherImpressionReportingAllowed {
    r0 = *(int8_t *)(int64_t *)&self->_publisherImpressionReportingAllowed;
    return r0;
}

-(bool)publisherRenderAdChoicesAllowed {
    r0 = *(int8_t *)(int64_t *)&self->_publisherRenderAdChoicesAllowed;
    return r0;
}

-(bool)publisherOwnedAdViewAllowed {
    r0 = *(int8_t *)(int64_t *)&self->_publisherOwnedAdViewAllowed;
    return r0;
}

-(bool)customOnePointFiveClickWhitelisted {
    r0 = *(int8_t *)(int64_t *)&self->_customOnePointFiveClickWhitelisted;
    return r0;
}

-(bool)customClickGestureAllowed {
    r0 = *(int8_t *)(int64_t *)&self->_customClickGestureAllowed;
    return r0;
}

@end