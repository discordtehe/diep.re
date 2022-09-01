// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCOLONY_INTERNALAVIDADSESSIONCONTEXT_H
#define ADCOLONY_INTERNALAVIDADSESSIONCONTEXT_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class AdColony_ExternalAvidAdSessionContext;

@interface AdColony_InternalAvidAdSessionContext : NSObject

@property (copy, nonatomic) NSString *avidSessionType; // ivar: _avidSessionType
@property (copy, nonatomic) NSString *mediaType; // ivar: _mediaType
@property (copy, nonatomic) NSString *avidAdSessionId; // ivar: _avidAdSessionId
@property (retain, nonatomic) AdColony_ExternalAvidAdSessionContext *avidAdSessionContext; // ivar: _avidAdSessionContext
@property (readonly, nonatomic) NSDictionary *fullContext;


+(id)contextWithId:(id)arg0 avidSessionType:(id)arg1 mediaType:(id)arg2 context:(id)arg3 ;


@end


#endif