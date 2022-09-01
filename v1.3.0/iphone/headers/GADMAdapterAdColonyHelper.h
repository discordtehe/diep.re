// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMADAPTERADCOLONYHELPER_H
#define GADMADAPTERADCOLONYHELPER_H


#import <Foundation/Foundation.h>


@interface GADMAdapterAdColonyHelper : NSObject



+(id)getAppOptionsFromExtras:(id)arg0 ;
+(id)getAppOptionsFromConnector:(id)arg0 ;
+(id)getAppOptionsFromAdConfig:(id)arg0 ;
+(id)getAdOptionsFromExtras:(id)arg0 ;
+(id)getAdOptionsFromConnector:(id)arg0 ;
+(id)getAdOptionsFromAdConfig:(id)arg0 ;
+(NSInteger)getNumberOfYearsSinceDate:(id)arg0 ;
+(id)parseZoneIDs:(id)arg0 ;
+(void)setupZoneFromCredentials:(id)arg0 options:(id)arg1 callback:(id)arg2 ;
+(void)setupZoneFromConnector:(id)arg0 callback:(id)arg1 ;
+(void)setupZoneFromAdConfig:(id)arg0 callback:(id)arg1 ;
+(id)getDictionaryFromJsonString:(id)arg0 ;
+(id)getJsonStringFromDictionary:(id)arg0 ;


@end


#endif