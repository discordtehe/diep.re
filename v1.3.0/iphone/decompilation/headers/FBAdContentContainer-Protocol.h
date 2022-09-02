// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBAdContentContainer

@property (weak, nonatomic) NSObject<FBAdContentContainerDelegate> *delegate;
@property (weak, nonatomic) NSObject<FBAdViewNavigationPolicy> *parent;
@property (nonatomic) CGSize actualAdSize;
@property (nonatomic) FBAdSize adSizeType;
@property (retain, nonatomic) FBAdDataModel *offsiteAd;
@property (nonatomic) CGSize minimumSize;
@property (nonatomic) CGSize maximumSize;
@property (nonatomic) CGPoint lastTouchStartLocation;
@property (nonatomic) CGPoint lastTouchCurrentLocation;
@property (nonatomic) CGFloat lastTouchStartTimestamp;
@property (nonatomic) CGFloat lastTouchCurrentTimestamp;
@property (nonatomic) CGFloat lastTouchRadius;
@property (nonatomic) CGFloat lastTouchPressure;
@property (nonatomic, getter=hasLoggedImpression) BOOL loggedImpression;
@property (readonly, nonatomic, getter=isTerminated) BOOL terminated;
@property (nonatomic) CGFloat firstImpressionTime;
@property (readonly, nonatomic, getter=isMarkupImpressionEventReceived) BOOL markupImpressionEventReceived;
@property (readonly, nonatomic) BOOL overrideMarkupImpressionCheck;
@property (readonly, nonatomic, getter=getView) UIView *view;
@property (readonly, nonatomic) BOOL logImpression;

-(id)initWithAdView:(id)arg0 actualAdSize:(struct CGSize )arg1 adSizeType:(struct FBAdSize )arg2 overrideMarkupImpressionCheck:(BOOL)arg3 ;
-(void)setFrame:(struct CGRect )arg0 ;
-(BOOL)loadAdData:(id)arg0 minViewability:(int)arg1 ;
-(BOOL)logClickWithExtraData:(id)arg0 ;
-(BOOL)loadAdMarkup:(id)arg0 activationCommand:(id)arg1 ;
-(void)initializeJavascriptAdControl;
-(id)delegate;
-(void)setDelegate:(id)arg0 ;
-(id)parent;
-(void)setParent:(id)arg0 ;
-(struct CGSize )actualAdSize;
-(void)setActualAdSize:(struct CGSize )arg0 ;
-(struct FBAdSize )adSizeType;
-(void)setAdSizeType:(struct FBAdSize )arg0 ;
-(id)offsiteAd;
-(void)setOffsiteAd:(id)arg0 ;
-(struct CGSize )minimumSize;
-(void)setMinimumSize:(struct CGSize )arg0 ;
-(struct CGSize )maximumSize;
-(void)setMaximumSize:(struct CGSize )arg0 ;
-(struct CGPoint )lastTouchStartLocation;
-(void)setLastTouchStartLocation:(struct CGPoint )arg0 ;
-(struct CGPoint )lastTouchCurrentLocation;
-(void)setLastTouchCurrentLocation:(struct CGPoint )arg0 ;
-(CGFloat)lastTouchStartTimestamp;
-(void)setLastTouchStartTimestamp:(CGFloat)arg0 ;
-(CGFloat)lastTouchCurrentTimestamp;
-(void)setLastTouchCurrentTimestamp:(CGFloat)arg0 ;
-(CGFloat)lastTouchRadius;
-(void)setLastTouchRadius:(CGFloat)arg0 ;
-(CGFloat)lastTouchPressure;
-(void)setLastTouchPressure:(CGFloat)arg0 ;
-(BOOL)hasLoggedImpression;
-(void)setLoggedImpression:(BOOL)arg0 ;
-(BOOL)isTerminated;
-(CGFloat)firstImpressionTime;
-(void)setFirstImpressionTime:(CGFloat)arg0 ;
-(BOOL)isMarkupImpressionEventReceived;
-(BOOL)overrideMarkupImpressionCheck;
-(id)getView;
-(BOOL)logImpression;

@end

