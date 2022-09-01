// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ANSCLEANUPFILESOPERATION_H
#define ANSCLEANUPFILESOPERATION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ANSCleanupFilesOperation : NSOperation

@property (readonly, nonatomic) NSURL *directoryUrl; // ivar: _directoryUrl
@property (readonly, nonatomic) NSInteger maximumPendingMultipartFiles; // ivar: _maximumPendingMultipartFiles
@property (copy, nonatomic) id *successBlock; // ivar: _successBlock


-(id)initWithDirectoryURL:(id)arg0 maximumPendingMulitpartFiles:(NSInteger)arg1 ;
-(void)main;
-(id)URLsByRemovingOldFiles:(id)arg0 withMaximumFileCount:(NSInteger)arg1 ;


@end


#endif