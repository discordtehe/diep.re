// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef APMMONITOR_H
#define APMMONITOR_H

@protocol OS_dispatch_queue;

#import <Foundation/Foundation.h>

@class APMASLLogger;
@class APMMonitoringSampledData;
@class APMUserDefaults;

@interface APMMonitor : NSObject {
    NSInteger _logLevel;
    APMASLLogger *_logger;
    APMMonitoringSampledData *_monitoringSampledData;
    NSObject<OS_dispatch_queue> *_monitorQueue;
    NSInteger _libraryVersion;
    APMUserDefaults *_monitorUserDefaults;
}


@property (nonatomic, getter=isDebugModeEnabled) BOOL debugModeEnabled; // ivar: _debugModeEnabled
@property (nonatomic) BOOL encodeContexts; // ivar: _encodeContexts
@property (retain, nonatomic) NSString *logTag; // ivar: _logTag


-(id)initWithLibraryVersion:(NSInteger)arg0 ;
-(id)initWithLogLevel:(NSInteger)arg0 logger:(id)arg1 libraryVersion:(NSInteger)arg2 ;
-(void)setLogLevel:(NSInteger)arg0 ;
-(void)logWithLevel:(NSInteger)arg0 messageCode:(NSInteger)arg1 message:(id)arg2 ;
-(void)logWithLevel:(NSInteger)arg0 messageCode:(NSInteger)arg1 message:(id)arg2 context:(id)arg3 ;
-(void)logWithLevel:(NSInteger)arg0 messageCode:(NSInteger)arg1 message:(id)arg2 context:(id)arg3 context:(id)arg4 ;
-(void)logWithLevel:(NSInteger)arg0 messageCode:(NSInteger)arg1 message:(id)arg2 context:(id)arg3 context:(id)arg4 context:(id)arg5 ;
-(void)logWithLevel:(NSInteger)arg0 messageCode:(NSInteger)arg1 message:(id)arg2 contexts:(id)arg3 ;
-(id)monitoringDataForDispatchWithSamplePeriod:(CGFloat)arg0 lastSampledTimestamp:(CGFloat)arg1 ;
-(void)clearMonitoringData;
-(void)loadMonitoringDataFromUserDefaultsOnMonitorQueue;
-(BOOL)isLoggableLevel:(NSInteger)arg0 ;
-(void)logToConsole:(NSInteger)arg0 message:(id)arg1 logLevel:(NSInteger)arg2 ;
-(void)insertOrUpdateMonitoringDataWithMessage:(id)arg0 encodedContext:(id)arg1 logLevel:(NSInteger)arg2 ;
-(void)saveMonitoringDataToUserDefaultsOnMonitorQueue;
-(void)migrateMonitorDataOnMonitorQueue;
-(void)synchronizeToDiskOnMonitorQueue;
+(id)logLevelDescriptionFromLogLevel:(NSInteger)arg0 ;
+(BOOL)isSilentLevel:(NSInteger)arg0 ;
+(BOOL)isMonitorableLevel:(NSInteger)arg0 ;
+(id)encodedStringWithContextArray:(id)arg0 insertSpaces:(BOOL)arg1 ;
+(id)stringWithLogMessage:(id)arg0 logLevel:(NSInteger)arg1 contexts:(id)arg2 encodeContexts:(BOOL)arg3 ;
+(id)encodedStringWithContextObject:(id)arg0 ;
+(id)lastAPMSymbolFromException:(id)arg0 ;
+(id)monitoringDataKeyWithMessage:(id)arg0 logLevel:(NSInteger)arg1 libraryVersion:(NSInteger)arg2 ;


@end


#endif