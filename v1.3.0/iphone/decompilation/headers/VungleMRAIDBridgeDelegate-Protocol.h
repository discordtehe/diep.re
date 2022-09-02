// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol VungleMRAIDBridgeDelegate


-(void)MRAIDBridge:(id)arg0 didFailToLoad:(id)arg1 ;
-(void)MRAIDBridgeDidLoadAd:(id)arg0 ;

@optional
-(void)handleNativeCommandCloseWithBridge:(id)arg0 ;
-(void)bridge:(id)arg0 handleDisplayForDestinationURL:(id)arg1 ;
-(void)bridge:(id)arg0 handleNativeCommandUseCustomClose:(NSInteger)arg1 ;
-(void)bridge:(id)arg0 handleNativeCommandSetOrientationPropertiesWithForceOrientationMask:(NSUInteger)arg1 ;
-(void)bridge:(id)arg0 handleNativeCommandTPATKey:(id)arg1 ;
-(void)bridge:(id)arg0 handleNativeCommandIsSuccessfulView:(BOOL)arg1 ;
-(void)handleNativeCommandCriticalErrorWithBridge:(id)arg0 ;
-(void)handleNativePrepareStoreView:(id)arg0 ;
-(void)handleNativePresentStoreView;
-(void)bridge:(id)arg0 handleExpandCommand:(id)arg1 ;
-(void)bridge:(id)arg0 handleResizeCommand:(id)arg1 ;
@end

