// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISEVENTSSETTINGS_H
#define ISEVENTSSETTINGS_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ISEventsSettings : NSObject

@property (readonly, nonatomic) BOOL sendUltraEvents; // ivar: _sendUltraEvents
@property (readonly, nonatomic) BOOL sendEventsToggle; // ivar: _sendEventsToggle
@property (readonly, nonatomic) NSURL *serverEventsURL; // ivar: _serverEventsURL
@property (readonly, nonatomic) NSUInteger backupThreshold; // ivar: _backupThreshold
@property (readonly, nonatomic) NSUInteger maxNumberOfEvents; // ivar: _maxNumberOfEvents
@property (readonly, copy, nonatomic) NSString *serverEventsType; // ivar: _serverEventsType
@property (readonly, nonatomic) NSArray *optOut; // ivar: _optOut
@property (nonatomic) NSUInteger maxEventsPerBatch; // ivar: _maxEventsPerBatch


-(id)initWithSendUltraEvents:(BOOL)arg0 sendEventsToggle:(BOOL)arg1 serverEventsURL:(id)arg2 backupThreshold:(NSUInteger)arg3 maxNumberOfEvents:(NSUInteger)arg4 serverEventsType:(id)arg5 optOut:(id)arg6 maxEventsPerBatch:(NSUInteger)arg7 ;
-(BOOL)isEqualToEventsSettings:(id)arg0 ;
-(BOOL)isEqual:(id)arg0 ;
-(id)description;


@end


#endif