// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMPBAUDIENCE_H
#define APMPBAUDIENCE_H


#import <Foundation/Foundation.h>

@protocol NANOMessageBase;

@interface APMPBAudience : NSObject <NANOMessageBase>



@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;
@property (readonly, nonatomic) char * messageID;
@property (readonly, nonatomic) *? messageInfo; // ivar: _messageInfo
@property (readonly, nonatomic) *unk initMessageInfoFn;
@property (readonly, nonatomic) *unk deallocMessageFieldFn;
@property (readonly, nonatomic) *unk copyMessageInfoFn;


-(void)dealloc;
-(id)initWithMessageInfo:(struct ? *)arg0 ;
-(id)initWithBuffer:(id)arg0 ;
-(id)protoBuffer;


@end


#endif