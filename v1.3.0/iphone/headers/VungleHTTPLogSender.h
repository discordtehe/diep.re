// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VUNGLEHTTPLOGSENDER_H
#define VUNGLEHTTPLOGSENDER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@protocol VungleLoggerDelegate;

@interface VungleHTTPLogSender : NSObject <VungleLoggerDelegate>



@property (retain, nonatomic) NSURL *remoteURL; // ivar: _remoteURL
@property (retain, nonatomic) NSValueTransformer *logLineValueTransfomer; // ivar: _logLineValueTransfomer
@property (nonatomic) CGFloat flushInterval; // ivar: _flushInterval
@property (retain, nonatomic) NSUserDefaults *defaults; // ivar: _defaults
@property (nonatomic, getter=isEnabled) BOOL enabled; // ivar: _enabled
@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithRemoteURL:(id)arg0 logLineValueTransformer:(id)arg1 flushTimeInterval:(CGFloat)arg2 defaults:(id)arg3 enabled:(BOOL)arg4 ;
-(void)start;
-(void)pause;
-(void)processStoredBatchLogs;
-(void)loggerDidReachMaximumEntriesInLogFile:(id)arg0 ;
-(void)sendLogs:(id)arg0 fileURL:(id)arg1 ;
+(id)processLogLinesAtPath:(id)arg0 withTransformer:(id)arg1 ;
+(id)createUploadOpForLogEntries:(id)arg0 batchID:(NSInteger)arg1 remoteURL:(id)arg2 completionBlock:(id)arg3 ;


@end


#endif