// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@interface UIDevice (ADJAdditions)



-(BOOL)adjTrackingEnabled;
-(id)adjIdForAdvertisers;
-(id)adjFbAttributionId;
-(id)adjDeviceType;
-(id)adjDeviceName;
-(id)adjCreateUuid;
-(id)adjVendorId;
-(void)adjSetIad:(id)arg0 triesV3Left:(int)arg1 ;
-(BOOL)adjSetIadWithDetails:(id)arg0 ADClientSharedClientInstance:(id)arg1 retriesLeft:(int)arg2 ;
-(BOOL)adjSetIadWithDates:(id)arg0 ADClientSharedClientInstance:(id)arg1 ;
@end


