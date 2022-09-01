// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MRNativeCommandHandlerDelegate


-(void)handleMRAIDUseCustomClose:(BOOL)arg0 ;
-(void)handleMRAIDSetOrientationPropertiesWithForceOrientationMask:(NSUInteger)arg0 ;
-(void)handleMRAIDExpandWithParameters:(id)arg0 ;
-(void)handleMRAIDResizeWithParameters:(id)arg0 ;
-(void)handleMRAIDClose;
-(void)handleMRAIDOpenCallForURL:(id)arg0 ;
-(void)nativeCommandWillPresentModalView;
-(void)nativeCommandDidDismissModalView;
-(void)nativeCommandCompleted:(id)arg0 ;
-(void)nativeCommandFailed:(id)arg0 withMessage:(id)arg1 ;
-(id)viewControllerForPresentingModalView;
-(NSUInteger)adViewPlacementType;
-(BOOL)userInteractedWithWebView;
-(BOOL)handlingWebviewRequests;

@end

