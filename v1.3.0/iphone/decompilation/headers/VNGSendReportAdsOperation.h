// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGSENDREPORTADSOPERATION_H
#define VNGSENDREPORTADSOPERATION_H

@protocol VungleReportAdOperationDelegate;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface VNGSendReportAdsOperation : NSOperation

@property (nonatomic) BOOL isFinished; // ivar: _isFinished
@property (nonatomic) BOOL isExecuting; // ivar: _isExecuting
@property (retain, nonatomic) NSMutableArray *internalErrors; // ivar: _internalErrors
@property (retain, nonatomic) NSMutableArray *completions; // ivar: _completions
@property (weak, nonatomic) NSObject<VungleReportAdOperationDelegate> *delegate; // ivar: _delegate


-(id)initWithLocalReportPaths:(id)arg0 reportAdURL:(id)arg1 ;
-(id)addOperationsWithPaths:(id)arg0 reportAdURL:(id)arg1 ;
-(void)operationCompletionResponse:(id)arg0 report:(id)arg1 error:(id)arg2 ;
-(void)appendFinishHandler:(id)arg0 ;
-(void)start;
-(void)isFinished:(BOOL)arg0 ;


@end


#endif