// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOLOCALIZATIONDELEGATE_H
#define MCPROMOLOCALIZATIONDELEGATE_H

@protocol MCPromoSystemClientDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol MCLocalizationProtocol;

@interface MCPromoLocalizationDelegate : NSObject <MCLocalizationProtocol>

 {
    NSArray *_currentUserLanguage;
    NSArray *_defaultUserLanguage;
    id<MCPromoSystemClientDelegate> *_clientDelegate;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithPromoClientDelegate:(id)arg0 ;
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


@end


#endif