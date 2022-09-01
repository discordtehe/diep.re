// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol GADCustomEventNativeAd

@property (weak, nonatomic) NSObject<GADCustomEventNativeAdDelegate> *delegate;

-(void)requestNativeAdWithParameter:(id)arg0 request:(id)arg1 adTypes:(id)arg2 options:(id)arg3 rootViewController:(id)arg4 ;
-(BOOL)handlesUserClicks;
-(BOOL)handlesUserImpressions;
-(id)delegate;
-(void)setDelegate:(id)arg0 ;

@end

