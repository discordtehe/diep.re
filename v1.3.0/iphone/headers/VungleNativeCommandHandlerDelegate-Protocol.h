// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol VungleNativeCommandHandlerDelegate


-(void)commandHandler:(id)arg0 handleMRAIDCustomClose:(NSInteger)arg1 ;
-(void)commandHandler:(id)arg0 handleMRAIDSetOrientationPropertiesWithForceOrientationMask:(NSUInteger)arg1 ;
-(void)commandHandlerHandleMRAIDClose:(id)arg0 ;
-(void)commandHandler:(id)arg0 handleMRAIDOpenCallForURL:(id)arg1 ;
-(void)commandHandler:(id)arg0 handleTPAT:(id)arg1 ;
-(void)commandHandler:(id)arg0 handleConsentAction:(id)arg1 ;
-(void)commandHandler:(id)arg0 handleUIAction:(id)arg1 ;
-(void)commandHandler:(id)arg0 handleUIAction:(id)arg1 withValue:(id)arg2 ;
-(void)commandHandler:(id)arg0 handleSuccessfulView:(BOOL)arg1 ;
-(void)commandHandler:(id)arg0 handleExpandWith:(id)arg1 ;
-(void)commandHandler:(id)arg0 handleResizeWtih:(id)arg1 ;
-(void)commandHandler:(id)arg0 handleErrorCode:(id)arg1 ;
-(void)commandHandler:(id)arg0 handlePrepareStoreViewWithAppStoreParameters:(id)arg1 ;
-(void)commandHandlerHandlePresentStoreView;

@end

