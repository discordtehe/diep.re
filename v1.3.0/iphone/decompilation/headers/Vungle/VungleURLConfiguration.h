// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEURLCONFIGURATION_H
#define VUNGLEURLCONFIGURATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface VungleURLConfiguration : NSObject

@property (retain) NSURL *registerUserURL; // ivar: _registerUserURL
@property (retain) NSURL *adsURL; // ivar: _adsURL
@property (retain) NSURL *willPlayAdURL; // ivar: _willPlayAdURL
@property (retain) NSURL *reportAdURL; // ivar: _reportAdURL
@property (retain) NSURL *logURL; // ivar: _logURL
@property (retain) NSURL *configURL; // ivar: _configURL
@property (readonly) NSURL *reportIncentivizedURL; // ivar: _reportIncentivizedURL


-(id)initWithDictionary:(id)arg0 ;
+(id)defaultConfigURL;
+(id)defaultBaseURL;
+(id)defaultReachabilityURL;
+(id)defaultReportAdURL;


@end


#endif