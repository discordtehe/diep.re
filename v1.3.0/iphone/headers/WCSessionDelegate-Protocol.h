// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol WCSessionDelegate


-(void)session:(id)arg0 activationDidCompleteWithState:(NSInteger)arg1 error:(id)arg2 ;
-(void)sessionDidBecomeInactive:(id)arg0 ;
-(void)sessionDidDeactivate:(id)arg0 ;

@optional
-(void)sessionWatchStateDidChange:(id)arg0 ;
-(void)sessionReachabilityDidChange:(id)arg0 ;
-(void)session:(id)arg0 didReceiveMessage:(id)arg1 ;
-(void)session:(id)arg0 didReceiveMessage:(id)arg1 replyHandler:(id)arg2 ;
-(void)session:(id)arg0 didReceiveMessageData:(id)arg1 ;
-(void)session:(id)arg0 didReceiveMessageData:(id)arg1 replyHandler:(id)arg2 ;
-(void)session:(id)arg0 didReceiveApplicationContext:(id)arg1 ;
-(void)session:(id)arg0 didFinishUserInfoTransfer:(id)arg1 error:(id)arg2 ;
-(void)session:(id)arg0 didReceiveUserInfo:(id)arg1 ;
-(void)session:(id)arg0 didFinishFileTransfer:(id)arg1 error:(id)arg2 ;
-(void)session:(id)arg0 didReceiveFile:(id)arg1 ;
@end

