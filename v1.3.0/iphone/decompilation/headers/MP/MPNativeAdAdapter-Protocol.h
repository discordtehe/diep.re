// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPNativeAdAdapter

@property (readonly, nonatomic) NSDictionary *properties;
@property (readonly, nonatomic) NSURL *defaultActionURL;
@property (weak, nonatomic) NSObject<MPNativeAdAdapterDelegate> *delegate;

-(id)properties;
-(id)defaultActionURL;

@optional
-(void)displayContentForURL:(id)arg0 rootViewController:(id)arg1 ;
-(BOOL)enableThirdPartyClickTracking;
-(void)trackClick;
-(void)willAttachToView:(id)arg0 ;
-(void)willAttachToView:(id)arg0 withAdContentViews:(id)arg1 ;
-(void)displayContentForDAAIconTap;
-(id)privacyInformationIconView;
-(id)mainMediaView;
-(id)iconMediaView;
-(id)delegate;
-(void)setDelegate:(id)arg0 ;
@end

