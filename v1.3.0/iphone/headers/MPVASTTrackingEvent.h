// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPVASTTRACKINGEVENT_H
#define MPVASTTRACKINGEVENT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class MPVASTModel;
@class MPVASTDurationOffset;

@interface MPVASTTrackingEvent : MPVASTModel

@property (readonly, copy, nonatomic) NSString *eventType; // ivar: _eventType
@property (readonly, copy, nonatomic) NSURL *URL; // ivar: _URL
@property (readonly, nonatomic) MPVASTDurationOffset *progressOffset; // ivar: _progressOffset


-(id)initWithDictionary:(id)arg0 ;


@end


#endif