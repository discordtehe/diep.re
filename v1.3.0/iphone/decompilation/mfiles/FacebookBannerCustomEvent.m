@implementation FacebookBannerCustomEvent

-(bool)enableAutomaticImpressionAndClickTracking {
    return 0x0;
}

-(void)requestAdWithSize:(struct CGSize)arg2 customEventInfo:(void *)arg3 {
    memcpy(&r2, &arg2, 0x8);
    [self requestAdWithSize:r2 customEventInfo:0x0 adMarkup:r4];
    return;
}

-(void)dealloc {
    r0 = [self fbAdView];
    r0 = [r0 retain];
    [r0 setDelegate:0x0];
    [r0 release];
    [[&var_20 super] dealloc];
    return;
}

-(void)adView:(void *)arg2 didFailWithError:(void *)arg3 {
    r20 = [arg3 retain];
    r24 = [NSStringFromClass([self class]) retain];
    r22 = [[MPLogEvent adLoadFailedForAdapter:r24 error:r20] retain];
    [MPLogging logEvent:r22 source:0x0 fromClass:[self class]];
    [r22 release];
    [r24 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEvent:self didFailToLoadAdWithError:r20];
    [r20 release];
    [r0 release];
    return;
}

-(void *)createErrorWith:(void *)arg2 andReason:(void *)arg3 andSuggestion:(void *)arg4 {
    r31 = r31 - 0xa0;
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
    var_58 = **___stack_chk_guard;
    r23 = [arg2 retain];
    r25 = [arg3 retain];
    r21 = @class(NSBundle);
    r22 = [arg4 retain];
    r0 = [r21 mainBundle];
    r0 = [r0 retain];
    r20 = r0;
    r21 = [[r0 localizedStringForKey:r23 value:@"" table:0x0] retain];
    [r23 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r23 = r0;
    r28 = [[r0 localizedStringForKey:r25 value:@"" table:0x0] retain];
    [r25 release];
    r0 = @class(NSBundle);
    r0 = [r0 mainBundle];
    r0 = [r0 retain];
    r25 = [[r0 localizedStringForKey:r22 value:@"" table:0x0] retain];
    [r22 release];
    r22 = [[NSDictionary dictionaryWithObjects:&var_70 forKeys:&var_88 count:0x3] retain];
    [r25 release];
    [r0 release];
    [r28 release];
    [r23 release];
    [r21 release];
    [r20 release];
    r21 = [NSStringFromClass([self class]) retain];
    r19 = [[NSError errorWithDomain:r21 code:0x0 userInfo:r22] retain];
    [r21 release];
    [r22 release];
    if (**___stack_chk_guard == var_58) {
            r0 = [r19 autorelease];
    }
    else {
            r0 = __stack_chk_fail();
    }
    return r0;
}

-(void)adViewWillLogImpression:(void *)arg2 {
    r22 = [[NSString stringWithFormat:@"Facebook banner ad did log impression"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 trackImpression];
    [r0 release];
    return;
}

-(void)adViewDidLoad:(void *)arg2 {
    r24 = @class(MPLogging);
    r22 = @class(MPLogEvent);
    var_58 = [arg2 retain];
    r25 = [NSStringFromClass([self class]) retain];
    r26 = [[r22 adLoadSuccessForAdapter:r25] retain];
    r27 = [[self fbPlacementId] retain];
    [r24 logEvent:r26 source:r27 fromClass:[self class]];
    [r27 release];
    [r26 release];
    [r25 release];
    r24 = @class(MPLogging);
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adShowAttemptForAdapter:r26] retain];
    r27 = [[self fbPlacementId] retain];
    [r24 logEvent:r25 source:r27 fromClass:[self class]];
    [r27 release];
    [r25 release];
    [r26 release];
    r24 = @class(MPLogging);
    r25 = @class(MPLogEvent);
    r26 = [NSStringFromClass([self class]) retain];
    r25 = [[r25 adShowSuccessForAdapter:r26] retain];
    r22 = [[self fbPlacementId] retain];
    [r24 logEvent:r25 source:r22 fromClass:[self class]];
    [r22 release];
    [r25 release];
    [r26 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEvent:self didLoadAd:var_58];
    [var_58 release];
    [r0 release];
    return;
}

-(void)adViewDidFinishHandlingClick:(void *)arg2 {
    r22 = [[NSString stringWithFormat:@"Facebook banner ad did finish handling click"] retain];
    r21 = [[MPLogEvent eventWithMessage:r22 level:0x1e] retain];
    [MPLogging logEvent:r21 source:0x0 fromClass:[self class]];
    [r21 release];
    [r22 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEventDidFinishAction:self];
    [r0 release];
    return;
}

-(void)adViewDidClick:(void *)arg2 {
    r23 = [NSStringFromClass([self class]) retain];
    r21 = [[MPLogEvent adTappedForAdapter:r23] retain];
    r24 = [[self fbPlacementId] retain];
    [MPLogging logEvent:r21 source:r24 fromClass:[self class]];
    [r24 release];
    [r21 release];
    [r23 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 trackClick];
    [r0 release];
    r0 = [self delegate];
    r0 = [r0 retain];
    [r0 bannerCustomEventWillBeginAction:self];
    [r0 release];
    return;
}

-(void *)viewControllerForPresentingModalView {
    r0 = [self delegate];
    r0 = [r0 retain];
    r20 = [[r0 viewControllerForPresentingModalView] retain];
    [r0 release];
    r0 = [r20 autorelease];
    return r0;
}

-(void)requestAdWithSize:(struct CGSize)arg2 customEventInfo:(void *)arg3 adMarkup:(void *)arg4 {
    r4 = arg4;
    r3 = arg3;
    memcpy(&r2, &arg2, 0x8);
    var_70 = d11;
    stack[-120] = d10;
    r31 = r31 + 0xffffffffffffff80;
    var_60 = d9;
    stack[-104] = d8;
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
    v8 = v1;
    v9 = v0;
    r20 = self;
    r21 = [r2 retain];
    r28 = [r3 retain];
    r0 = [r21 objectForKey:@"placement_id"];
    r29 = &saved_fp;
    r22 = [r0 retain];
    [r21 release];
    [r20 setFbPlacementId:r22];
    [r22 release];
    r19 = 0x100bfcdb0;
    if (d8 == *(r19 + 0x8)) goto loc_1004a8748;

loc_1004a8720:
    r19 = 0x100bfcd90;
    if (d8 == *(r19 + 0x8)) goto loc_1004a8748;

loc_1004a8734:
    r19 = 0x100bfcd80;
    if (d8 != *(r19 + 0x8)) goto loc_1004a8de8;

loc_1004a8748:
    r0 = [r20 fbPlacementId];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 == 0x0) goto loc_1004a8a70;

loc_1004a8770:
    r22 = objc_alloc();
    r24 = [[r20 fbPlacementId] retain];
    r0 = [r20 delegate];
    r0 = [r0 retain];
    r26 = [[r0 viewControllerForPresentingModalView] retain];
    v0 = v11;
    v1 = v10;
    r22 = [r22 initWithPlacementID:r24 adSize:r26 rootViewController:r4];
    [r20 setFbAdView:r22];
    [r22 release];
    [r26 release];
    [r0 release];
    [r24 release];
    r0 = [r20 fbAdView];
    r0 = [r0 retain];
    [r0 setDelegate:r20];
    [r0 release];
    r0 = [r20 fbAdView];
    r29 = r29;
    r0 = [r0 retain];
    [r0 release];
    if (r0 != 0x0) {
            r0 = [r20 fbAdView];
            r0 = [r0 retain];
            [r0 frame];
            [r0 release];
            r0 = [r20 fbAdView];
            r0 = [r0 retain];
            [r0 setFrame:r2];
            [r0 release];
            r0 = [FacebookAdapterConfiguration mediationString];
            r29 = r29;
            r24 = [r0 retain];
            [FBAdSettings setMediationService:r24];
            [r24 release];
            if (r28 != 0x0) {
                    r26 = [[NSString stringWithFormat:r2] retain];
                    r27 = [[MPLogEvent eventWithMessage:r26 level:0x1e] retain];
                    [MPLogging logEvent:r27 source:0x0 fromClass:[r20 class]];
                    [r27 release];
                    [r26 release];
                    r0 = [r20 fbAdView];
                    r0 = [r0 retain];
                    [r0 loadAdWithBidPayload:r28];
                    [r0 release];
                    r23 = @class(MPLogEvent);
                    r22 = [NSStringFromClass([r20 class]) retain];
                    r23 = [[r23 adLoadAttemptForAdapter:r22 dspCreativeId:0x0 dspName:0x0] retain];
                    r0 = [r20 fbPlacementId];
            }
            else {
                    r26 = [[NSString stringWithFormat:r2] retain];
                    r27 = [[MPLogEvent eventWithMessage:r26 level:0x1e] retain];
                    [MPLogging logEvent:r27 source:0x0 fromClass:[r20 class]];
                    [r27 release];
                    [r26 release];
                    r0 = [r20 fbAdView];
                    r0 = [r0 retain];
                    [r0 loadAd];
                    [r0 release];
                    r23 = @class(MPLogEvent);
                    r22 = [NSStringFromClass([r20 class]) retain];
                    r23 = [[r23 adLoadAttemptForAdapter:r22 dspCreativeId:0x0 dspName:0x0] retain];
                    r0 = [r20 fbPlacementId];
            }
            r21 = [r0 retain];
            [MPLogging logEvent:r23 source:r21 fromClass:[r20 class]];
            r0 = r21;
    }
    else {
            r22 = [[r20 createErrorWith:@"Facebook failed to load an ad" andReason:r3 andSuggestion:@""] retain];
            r0 = [r20 delegate];
            r0 = [r0 retain];
            [r0 bannerCustomEvent:r20 didFailToLoadAdWithError:r22];
            [r0 release];
            r23 = [NSStringFromClass([r20 class]) retain];
            r25 = [[MPLogEvent adLoadFailedForAdapter:r23 error:r22] retain];
            r21 = [[r20 fbPlacementId] retain];
            [MPLogging logEvent:r25 source:r21 fromClass:[r20 class]];
            [r21 release];
            r0 = r25;
    }
    [r0 release];
    goto loc_1004a8db0;

loc_1004a8db0:
    [r23 release];
    [r22 release];
    [r28 release];
    return;

loc_1004a8a70:
    r22 = [[r20 createErrorWith:@"Invalid Facebook placement ID" andReason:r3 andSuggestion:@""] retain];
    r25 = [NSStringFromClass([r20 class]) retain];
    r23 = [[MPLogEvent adLoadFailedForAdapter:r25 error:r22] retain];
    [MPLogging logEvent:r23 source:0x0 fromClass:[r20 class]];
    [r23 release];
    [r25 release];
    r0 = [r20 delegate];
    goto loc_1004a8b44;

loc_1004a8b44:
    r0 = [r0 retain];
    r23 = r0;
    [r0 bannerCustomEvent:r20 didFailToLoadAdWithError:r22];
    goto loc_1004a8db0;

loc_1004a8de8:
    r22 = [[r20 createErrorWith:@"Banner size does not match with Facebook's standard banner width or height" andReason:r3 andSuggestion:@""] retain];
    r25 = [NSStringFromClass([r20 class]) retain];
    r23 = [[MPLogEvent adLoadFailedForAdapter:r25 error:r22] retain];
    r26 = [[r20 fbPlacementId] retain];
    [MPLogging logEvent:r23 source:r26 fromClass:[r20 class]];
    [r26 release];
    [r23 release];
    [r25 release];
    r0 = [r20 delegate];
    goto loc_1004a8b44;
}

-(void *)fbAdView {
    r0 = self->_fbAdView;
    return r0;
}

-(void)setFbAdView:(void *)arg2 {
    objc_storeStrong((int64_t *)&self->_fbAdView, arg2);
    return;
}

-(void *)fbPlacementId {
    r0 = objc_getProperty(self, _cmd, sign_extend_64(*(int32_t *)ivar_offset(_fbPlacementId)), 0x0);
    return r0;
}

-(void)setFbPlacementId:(void *)arg2 {
    objc_setProperty_nonatomic_copy();
    return;
}

-(void).cxx_destruct {
    objc_storeStrong((int64_t *)&self->_fbPlacementId, 0x0);
    objc_storeStrong((int64_t *)&self->_fbAdView, 0x0);
    return;
}

@end