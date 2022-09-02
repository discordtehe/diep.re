// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MPNativeAdRenderer

@property (readonly, nonatomic) id *viewSizeHandler;

-(id)initWithRendererSettings:(id)arg0 ;
-(id)retrieveViewWithAdapter:(id)arg0 error:(*id)arg1 ;
+(id)rendererConfigurationWithRendererSettings:(id)arg0 ;

@optional
-(void)adViewWillMoveToSuperview:(id)arg0 ;
-(void)nativeAdTapped;
-(id)viewSizeHandler:(SEL)arg0 ;
@end

