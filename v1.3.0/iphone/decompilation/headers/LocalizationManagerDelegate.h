// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef LOCALIZATIONMANAGERDELEGATE_H
#define LOCALIZATIONMANAGERDELEGATE_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MCLocalizationProtocol;

@interface LocalizationManagerDelegate : NSObject <MCLocalizationProtocol>

 {
    NSArray *_currentUserLanguage;
    NSArray *_defaultUserLanguage;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)init;
-(void)dealloc;
-(void)updateCurrentLanguage;
-(id)getCurrentUserCountryCode;
-(id)getCurrentUserRegionCode;
-(id)getFallbackUserCountryCode;
-(id)getFallbackUserRegionCode;
-(id)getLocalizationTextDataForCountryCode:(id)arg0 andRegionCode:(id)arg1 ;
-(id)getBaseResourceData;
-(id)getLocalizationResourceDataForCountryCode:(id)arg0 andRegionCode:(id)arg1 ;
-(id)getAllRegionsForCountryCode:(id)arg0 ;
-(id)getDefaultRegionCodeForCountryCode:(id)arg0 ;
-(BOOL)isResourceValid:(id)arg0 ;
-(void)cleanUpResourceList:(id)arg0 ;
-(void)valueMapWasMerged;
+(id)localizationManagerDelegate;


@end


#endif