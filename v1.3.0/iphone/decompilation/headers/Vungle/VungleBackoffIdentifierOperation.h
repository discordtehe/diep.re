// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEBACKOFFIDENTIFIEROPERATION_H
#define VUNGLEBACKOFFIDENTIFIEROPERATION_H


#import <Foundation/Foundation.h>


@interface VungleBackoffIdentifierOperation : NSOperation

@property (copy, nonatomic) id *identifierBlock; // ivar: _identifierBlock
@property (copy, nonatomic) id *resultBlock; // ivar: _resultBlock
@property (nonatomic) CGFloat timeInterval; // ivar: _timeInterval
@property (copy, nonatomic) NSString *identifier; // ivar: _identifier


// -(id)initWithIdentifierBlock:(id)arg0 resultBlock:(unk)arg1  ;
-(void)main;
-(void)executeResultBlock;
-(id)getIdentifier;
-(void)startIncrementalBackOff;
// +(id)operationWithIdentifierBlock:(id)arg0 resultBlock:(unk)arg1  ;


@end


#endif