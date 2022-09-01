// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol NANOMessageBase

@property (readonly, nonatomic) char * messageID;
@property (readonly, nonatomic) *? messageInfo;
@property (readonly, nonatomic) *unk initMessageInfoFn;
@property (readonly, nonatomic) *unk deallocMessageFieldFn;
@property (readonly, nonatomic) *unk copyMessageInfoFn;

-(id)initWithMessageInfo:(struct ? *)arg0 ;
-(id)initWithBuffer:(id)arg0 ;
-(id)protoBuffer;
-(char *)messageID;
-(struct ? *)messageInfo;
-(*unk)initMessageInfoFn;
-(*unk)deallocMessageFieldFn;
-(*unk)copyMessageInfoFn;

@end

