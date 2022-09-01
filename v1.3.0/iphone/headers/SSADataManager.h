// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef SSADATAMANAGER_H
#define SSADATAMANAGER_H


#import <Foundation/Foundation.h>

@class SSADownloadManager;
@class SSASettings;

@interface SSADataManager : NSObject

@property (retain, nonatomic) SSADownloadManager *downloadMgr; // ivar: _downloadMgr
@property (retain, nonatomic) SSASettings *settings; // ivar: _settings


// -(void)getURL:(id)arg0 timeout:(CGFloat)arg1 numOfRetries:(int)arg2 completionHandler:(id)arg3 fail:(unk)arg4  ;
// -(void)getURL:(id)arg0 timeout:(CGFloat)arg1 completionHandler:(id)arg2 fail:(unk)arg3  ;
-(id)init;


@end


#endif