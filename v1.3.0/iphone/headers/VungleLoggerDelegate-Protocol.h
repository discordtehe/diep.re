// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol VungleLoggerDelegate



@optional
-(void)loggerDidReachMaximumEntriesInLogFile:(id)arg0 ;
-(void)loggerDidFlushToDisk:(id)arg0 ;
-(void)logger:(id)arg0 didFailToFlushWithError:(id)arg1 ;
@end

