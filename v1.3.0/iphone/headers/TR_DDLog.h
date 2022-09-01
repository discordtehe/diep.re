// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef TR_DDLOG_H
#define TR_DDLOG_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface TR_DDLog : NSObject

@property (retain, nonatomic) NSMutableArray *_loggers; // ivar: __loggers


-(id)init;
-(void)applicationWillTerminate:(id)arg0 ;
-(void)addLogger:(id)arg0 ;
-(void)addLogger:(id)arg0 withLevel:(NSUInteger)arg1 ;
-(void)removeLogger:(id)arg0 ;
-(void)removeAllLoggers;
-(id)allLoggers;
-(id)allLoggersWithLevel;
-(void)queueLogMessage:(id)arg0 asynchronously:(BOOL)arg1 ;
-(void)log:(BOOL)arg0 level:(NSUInteger)arg1 flag:(NSUInteger)arg2 context:(NSInteger)arg3 file:(char *)arg4 function:(char *)arg5 line:(NSUInteger)arg6 tag:(id)arg7 format:(id)arg8 ;
-(void)log:(BOOL)arg0 level:(NSUInteger)arg1 flag:(NSUInteger)arg2 context:(NSInteger)arg3 file:(char *)arg4 function:(char *)arg5 line:(NSUInteger)arg6 tag:(id)arg7 format:(id)arg8 args:(char *)arg9 ;
-(void)log:(BOOL)arg0 message:(id)arg1 level:(NSUInteger)arg2 flag:(NSUInteger)arg3 context:(NSInteger)arg4 file:(char *)arg5 function:(char *)arg6 line:(NSUInteger)arg7 tag:(id)arg8 ;
-(void)log:(BOOL)arg0 message:(id)arg1 ;
-(void)flushLog;
-(void)lt_addLogger:(id)arg0 level:(NSUInteger)arg1 ;
-(void)lt_removeLogger:(id)arg0 ;
-(void)lt_removeAllLoggers;
-(id)lt_allLoggers;
-(id)lt_allLoggersWithLevel;
-(void)lt_log:(id)arg0 ;
-(void)lt_flush;
+(id)sharedInstance;
+(void)initialize;
+(id)loggingQueue;
+(void)addLogger:(id)arg0 ;
+(void)addLogger:(id)arg0 withLevel:(NSUInteger)arg1 ;
+(void)removeLogger:(id)arg0 ;
+(void)removeAllLoggers;
+(id)allLoggers;
+(id)allLoggersWithLevel;
+(void)log:(BOOL)arg0 level:(NSUInteger)arg1 flag:(NSUInteger)arg2 context:(NSInteger)arg3 file:(char *)arg4 function:(char *)arg5 line:(NSUInteger)arg6 tag:(id)arg7 format:(id)arg8 ;
+(void)log:(BOOL)arg0 level:(NSUInteger)arg1 flag:(NSUInteger)arg2 context:(NSInteger)arg3 file:(char *)arg4 function:(char *)arg5 line:(NSUInteger)arg6 tag:(id)arg7 format:(id)arg8 args:(char *)arg9 ;
+(void)log:(BOOL)arg0 message:(id)arg1 level:(NSUInteger)arg2 flag:(NSUInteger)arg3 context:(NSInteger)arg4 file:(char *)arg5 function:(char *)arg6 line:(NSUInteger)arg7 tag:(id)arg8 ;
+(void)log:(BOOL)arg0 message:(id)arg1 ;
+(void)flushLog;
+(BOOL)isRegisteredClass:(Class)arg0 ;
+(id)registeredClasses;
+(id)registeredClassNames;
+(NSUInteger)levelForClass:(Class)arg0 ;
+(NSUInteger)levelForClassWithName:(id)arg0 ;
+(void)setLevel:(NSUInteger)arg0 forClass:(Class)arg1 ;
+(void)setLevel:(NSUInteger)arg0 forClassWithName:(id)arg1 ;


@end


#endif