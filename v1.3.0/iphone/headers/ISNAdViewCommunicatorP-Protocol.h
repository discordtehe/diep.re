// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol ISNAdViewCommunicatorP

@property (weak, nonatomic) NSObject<ISNAdViewDelegate> *communicatorDelegate;

-(void)sendMessage:(id)arg0 params:(id)arg1 ;
-(void)sendMessageWithArray:(id)arg0 params:(id)arg1 ;
-(id)communicatorDelegate;
-(void)setCommunicatorDelegate:(id)arg0 ;

@end

