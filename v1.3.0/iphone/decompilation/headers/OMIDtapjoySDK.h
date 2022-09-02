// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYSDK_H
#define OMIDTAPJOYSDK_H


#import <Foundation/Foundation.h>


@interface OMIDtapjoySDK : NSObject

@property (readonly, getter=isActive) BOOL active; // ivar: _active


-(BOOL)activateWithOMIDAPIVersion:(id)arg0 error:(*id)arg1 ;
+(id)versionString;
+(BOOL)isCompatibleWithOMIDAPIVersion:(id)arg0 ;
+(NSInteger)majorVersionFrom:(id)arg0 ;
+(id)sharedInstance;


@end


#endif