// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CCBSEQUENCE_H
#define CCBSEQUENCE_H


#import <Foundation/Foundation.h>

@class CCBSequenceProperty;

@interface CCBSequence : NSObject

@property (nonatomic) float duration; // ivar: duration
@property (copy, nonatomic) NSString *name; // ivar: name
@property (nonatomic) int sequenceId; // ivar: sequenceId
@property (nonatomic) int chainedSequenceId; // ivar: chainedSequenceId
@property (retain, nonatomic) CCBSequenceProperty *callbackChannel; // ivar: callbackChannel
@property (retain, nonatomic) CCBSequenceProperty *soundChannel; // ivar: soundChannel


-(id)init;
-(void)dealloc;


@end


#endif