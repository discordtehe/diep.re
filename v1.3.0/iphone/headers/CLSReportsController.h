// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CLSREPORTSCONTROLLER_H
#define CLSREPORTSCONTROLLER_H


#import <Foundation/Foundation.h>

@class CLSNetworkClient;
@class CLSFileManager;
@protocol CLSReportsControllerDelegate;

@interface CLSReportsController : NSObject

@property (weak, nonatomic) NSObject<CLSReportsControllerDelegate> *delegate; // ivar: _delegate
@property (readonly, nonatomic) NSOperationQueue *operationQueue; // ivar: _operationQueue
@property (readonly, nonatomic) CLSNetworkClient *networkClient; // ivar: _networkClient
@property (readonly, nonatomic) CLSFileManager *fileManager; // ivar: _fileManager


-(id)initWithQueue:(id)arg0 delegate:(id)arg1 client:(id)arg2 fileManager:(id)arg3 ;
-(id)settings;
-(id)appBundleIdentifier;
-(id)reportEndpoint;
-(id)reportURL;
-(BOOL)submissionEnabled;
-(BOOL)packagingEnabled;
-(id)localeIdentifier;
-(id)APIKey;
-(id)mutableRequestWithURL:(id)arg0 timeout:(CGFloat)arg1 ;
-(BOOL)fillInRequest:(id)arg0 forMultipartMimeDataAtPath:(id)arg1 ;
-(BOOL)prepareAndSubmitReport:(id)arg0 asUrgent:(BOOL)arg1 withProcessing:(BOOL)arg2 ;
-(BOOL)submitPackageMultipartMimeAtPath:(id)arg0 synchronously:(BOOL)arg1 ;
-(BOOL)uploadPackagedReportAtPath:(id)arg0 asUrgent:(BOOL)arg1 ;
-(BOOL)cleanUpSubmittedReportAtPath:(id)arg0 ;
-(void)reportUploadAtPath:(id)arg0 completedWithError:(id)arg1 ;


@end


#endif