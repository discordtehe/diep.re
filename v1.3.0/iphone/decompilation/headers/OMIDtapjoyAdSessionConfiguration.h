// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYADSESSIONCONFIGURATION_H
#define OMIDTAPJOYADSESSIONCONFIGURATION_H


#import <Foundation/Foundation.h>


@interface OMIDtapjoyAdSessionConfiguration : NSObject

@property NSUInteger impressionOwner; // ivar: _impressionOwner
@property NSUInteger videoEventsOwner; // ivar: _videoEventsOwner
@property BOOL isolateVerificationScripts; // ivar: _isolateVerificationScripts


-(id)initWithImpressionOwner:(NSUInteger)arg0 videoEventsOwner:(NSUInteger)arg1 isolateVerificationScripts:(BOOL)arg2 error:(*id)arg3 ;
-(id)initWithImpressionOwner:(NSUInteger)arg0 videoEventsOwner:(NSUInteger)arg1 error:(*id)arg2 ;


@end


#endif