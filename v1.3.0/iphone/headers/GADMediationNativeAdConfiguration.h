// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADMEDIATIONNATIVEADCONFIGURATION_H
#define GADMEDIATIONNATIVEADCONFIGURATION_H


#import <CoreFoundation/CoreFoundation.h>

@class GADMediationAdConfiguration;

@interface GADMediationNativeAdConfiguration : GADMediationAdConfiguration

@property (readonly, nonatomic) NSArray *options; // ivar: _options


-(id)initWithOptions:(id)arg0 adConfiguration:(struct NSDictionary *)arg1 targeting:(id)arg2 credentials:(id)arg3 extras:(id)arg4 ;
-(id)init;
-(id)initWithAdConfiguration:(struct NSDictionary *)arg0 targeting:(id)arg1 credentials:(id)arg2 extras:(id)arg3 ;


@end


#endif