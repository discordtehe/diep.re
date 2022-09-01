// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ADCGCDWebServerDelegate



@optional
-(void)webServerDidStart:(id)arg0 ;
-(void)webServerDidCompleteBonjourRegistration:(id)arg0 ;
-(void)webServerDidUpdateNATPortMapping:(id)arg0 ;
-(void)webServerDidConnect:(id)arg0 ;
-(void)webServerDidDisconnect:(id)arg0 ;
-(void)webServerDidStop:(id)arg0 ;
-(void)webServer:(id)arg0 didAbortRequest:(id)arg1 withStatusCode:(NSInteger)arg2 ;
@end

