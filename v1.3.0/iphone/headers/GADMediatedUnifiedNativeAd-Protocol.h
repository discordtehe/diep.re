// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol GADMediatedUnifiedNativeAd

@property (readonly, copy, nonatomic) NSString *headline;
@property (readonly, nonatomic) NSArray *images;
@property (readonly, copy, nonatomic) NSString *body;
@property (readonly, nonatomic) GADNativeAdImage *icon;
@property (readonly, copy, nonatomic) NSString *callToAction;
@property (readonly, copy, nonatomic) NSDecimalNumber *starRating;
@property (readonly, copy, nonatomic) NSString *store;
@property (readonly, copy, nonatomic) NSString *price;
@property (readonly, copy, nonatomic) NSString *advertiser;
@property (readonly, copy, nonatomic) NSDictionary *extraAssets;
@property (readonly, nonatomic) UIView *adChoicesView;
@property (readonly, nonatomic) UIView *mediaView;
@property (readonly, nonatomic) BOOL hasVideoContent;
@property (readonly, nonatomic) CGFloat mediaContentAspectRatio;

-(id)headline;
-(id)images;
-(id)body;
-(id)icon;
-(id)callToAction;
-(id)starRating;
-(id)store;
-(id)price;
-(id)advertiser;
-(id)extraAssets;

@optional
-(void)didRenderInView:(id)arg0 clickableAssetViews:(id)arg1 nonclickableAssetViews:(id)arg2 viewController:(id)arg3 ;
-(void)didRecordImpression;
-(void)didRecordClickOnAssetWithName:(id)arg0 view:(id)arg1 viewController:(id)arg2 ;
-(void)didUntrackView:(id)arg0 ;
-(id)adChoicesView;
-(id)mediaView;
-(BOOL)hasVideoContent;
-(CGFloat)mediaContentAspectRatio;
@end

