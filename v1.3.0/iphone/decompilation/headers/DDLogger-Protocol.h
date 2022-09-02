// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol DDLogger

@property (retain, nonatomic) NSObject<DDLogFormatter> *logFormatter;
@property (readonly, nonatomic) NSObject<OS_dispatch_queue> *loggerQueue;
@property (readonly, nonatomic) NSString *loggerName;

-(void)logMessage:(id)arg0 ;
-(id)logFormatter;
-(void)setLogFormatter:(id)arg0 ;

@optional
-(void)didAddLogger;
-(void)willRemoveLogger;
-(void)flush;
-(id)loggerQueue;
-(id)loggerName;
@end

