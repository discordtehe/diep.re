// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMFILTERRESULT_H
#define APMFILTERRESULT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface APMFilterResult : NSObject

@property (readonly, nonatomic) int audienceID; // ivar: _audienceID
@property (readonly, nonatomic) NSData *currentResults; // ivar: _currentResults
@property (readonly, nonatomic) NSData *previousResults; // ivar: _previousResults


-(id)initWithAudienceID:(int)arg0 currentResults:(id)arg1 previousResults:(id)arg2 ;


@end


#endif