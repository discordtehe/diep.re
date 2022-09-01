// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONYCONTROLLER_H
#define ADCOLONYCONTROLLER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface AdColonyController : NSObject

@property int initState; // ivar: _initState
@property (retain) NSSet *currentAllZoneIds; // ivar: _currentAllZoneIds
@property BOOL testModeEnabled; // ivar: _testModeEnabled


-(id)init;
+(void)initializeAdColonyCustomEventWithAppId:(id)arg0 allZoneIds:(id)arg1 userId:(id)arg2 callback:(id)arg3 ;
+(void)enableClientSideTestMode;
+(void)disableClientSideTestMode;
+(id)sharedInstance;


@end


#endif