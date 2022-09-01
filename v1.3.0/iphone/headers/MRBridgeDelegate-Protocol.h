// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MRBridgeDelegate


-(BOOL)isLoadingAd;
-(NSUInteger)placementType;
-(BOOL)hasUserInteractedWithWebViewForBridge:(id)arg0 ;
-(id)viewControllerForPresentingModalView;
-(void)nativeCommandWillPresentModalView;
-(void)nativeCommandDidDismissModalView;
-(void)bridge:(id)arg0 didFinishLoadingWebView:(id)arg1 ;
-(void)bridge:(id)arg0 didFailLoadingWebView:(id)arg1 error:(id)arg2 ;
-(void)handleNativeCommandCloseWithBridge:(id)arg0 ;
-(void)bridge:(id)arg0 performActionForMoPubSpecificURL:(id)arg1 ;
-(void)bridge:(id)arg0 handleDisplayForDestinationURL:(id)arg1 ;
-(void)bridge:(id)arg0 handleNativeCommandUseCustomClose:(BOOL)arg1 ;
-(void)bridge:(id)arg0 handleNativeCommandSetOrientationPropertiesWithForceOrientationMask:(NSUInteger)arg1 ;
-(void)bridge:(id)arg0 handleNativeCommandExpandWithURL:(id)arg1 useCustomClose:(BOOL)arg2 ;
-(void)bridge:(id)arg0 handleNativeCommandResizeWithParameters:(id)arg1 ;

@end

