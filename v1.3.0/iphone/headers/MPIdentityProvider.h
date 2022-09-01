// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPIDENTITYPROVIDER_H
#define MPIDENTITYPROVIDER_H


#import <Foundation/Foundation.h>


@interface MPIdentityProvider : NSObject



+(id)iso8601Calendar;
+(id)identifier;
+(id)obfuscatedIdentifier;
+(id)unobfuscatedMoPubIdentifier;
+(id)_identifier:(BOOL)arg0 ;
+(BOOL)advertisingTrackingEnabled;
+(id)identifierFromASIdentifierManager:(BOOL)arg0 ;
+(id)mopubIdentifier:(BOOL)arg0 ;
+(void)setFrequencyCappingIdUsageEnabled:(BOOL)arg0 ;
+(BOOL)frequencyCappingIdUsageEnabled;


@end


#endif