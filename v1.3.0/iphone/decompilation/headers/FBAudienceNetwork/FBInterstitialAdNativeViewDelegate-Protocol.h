// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol FBInterstitialAdNativeViewDelegate


-(id)interstitialAdNativeViewRootViewController:(id)arg0 ;
-(void)interstitialAdNativeViewDidLoad:(id)arg0 ;
-(void)interstitialAdNativeViewDidLogImpression:(id)arg0 withViewabilityValidator:(id)arg1 withPageNumber:(id)arg2 withPageTotal:(id)arg3 ;
-(void)interstitialAdNativeViewDidClick:(id)arg0 withEvent:(id)arg1 withCommand:(id)arg2 skipAppStore:(BOOL)arg3 withPageNumber:(id)arg4 withPageTotal:(id)arg5 ;
-(void)interstitialAdNativeViewDidClick:(id)arg0 withEvent:(id)arg1 withCommand:(id)arg2 skipAppStore:(BOOL)arg3 withPageNumber:(id)arg4 withPageTotal:(id)arg5 completionHandler:(id)arg6 ;
-(void)interstitialAdNativeViewDidInteract:(id)arg0 withTouchData:(id)arg1 touchType:(id)arg2 withCommand:(id)arg3 skipAppStore:(BOOL)arg4 withPageNumber:(id)arg5 withPageTotal:(id)arg6 completionHandler:(id)arg7 ;
-(void)interstitialAdNativeViewDidClose:(id)arg0 ;
-(void)interstitialAdNativeView:(id)arg0 didFailWithError:(id)arg1 ;

@end

