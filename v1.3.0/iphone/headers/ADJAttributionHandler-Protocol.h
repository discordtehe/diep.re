// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ADJAttributionHandler


-(id)initWithActivityHandler:(id)arg0 withAttributionPackage:(id)arg1 startsSending:(BOOL)arg2 ;
-(void)checkSessionResponse:(id)arg0 ;
-(void)checkSdkClickResponse:(id)arg0 ;
-(void)checkAttributionResponse:(id)arg0 ;
-(void)getAttribution;
-(void)pauseSending;
-(void)resumeSending;
-(void)teardown;

@end

