// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADCONTENT_H
#define GADCONTENT_H


#import <Foundation/Foundation.h>

@class GADBinaryHeap;

@interface GADContent : NSObject {
    NSInteger _contentAgeWeight;
    NSInteger _contentLengthWeight;
    NSInteger _contentTotalLength;
    GADBinaryHeap *_heap;
    NSInteger _maximumShingleCount;
    NSUInteger _minimumParagraphLength;
    NSUInteger _shingleLength;
}


@property (readonly, nonatomic) NSString *fingerprint; // ivar: _fingerprint
@property (readonly, nonatomic) NSInteger score; // ivar: _score
@property (readonly, nonatomic) NSInteger sequenceNumber; // ivar: _sequenceNumber


-(id)init;
-(id)initWithSequenceNumber:(NSInteger)arg0 ;
-(void)deductServedPenalty;
-(void)updateContentWithText:(id)arg0 ;
-(void)selectShinglesFromTokens:(id)arg0 ;
-(void)applyRollingHashToTokens:(id)arg0 baseHash:(unsigned int)arg1 ;
-(void)updateHeapWithHash:(unsigned int)arg0 shingle:(id)arg1 ;
-(id)shingleHash;


@end


#endif