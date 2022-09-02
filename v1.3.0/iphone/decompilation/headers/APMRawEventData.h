// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMRAWEVENTDATA_H
#define APMRAWEVENTDATA_H


#import <Foundation/Foundation.h>

@class APMEvent;

@interface APMRawEventData : NSObject

@property (readonly, nonatomic) APMEvent *rawEvent; // ivar: _rawEvent
@property (readonly, nonatomic) NSInteger rowID; // ivar: _rowID
@property (readonly, nonatomic) NSInteger metadataFingerprint; // ivar: _metadataFingerprint


-(id)initWithRawEvent:(id)arg0 rowID:(NSInteger)arg1 metadataFingerprint:(NSInteger)arg2 ;


@end


#endif