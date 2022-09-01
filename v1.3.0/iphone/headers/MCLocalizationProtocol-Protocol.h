// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol MCLocalizationProtocol


-(id)getFallbackUserCountryCode;
-(id)getFallbackUserRegionCode;
-(id)getCurrentUserCountryCode;
-(id)getCurrentUserRegionCode;
-(id)getLocalizationTextDataForCountryCode:(id)arg0 andRegionCode:(id)arg1 ;
-(id)getLocalizationResourceDataForCountryCode:(id)arg0 andRegionCode:(id)arg1 ;
-(id)getAllRegionsForCountryCode:(id)arg0 ;
-(id)getDefaultRegionCodeForCountryCode:(id)arg0 ;
-(BOOL)isResourceValid:(id)arg0 ;
-(void)cleanUpResourceList:(id)arg0 ;

@end

