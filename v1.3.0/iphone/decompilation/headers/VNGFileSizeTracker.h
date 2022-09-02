// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef VNGFILESIZETRACKER_H
#define VNGFILESIZETRACKER_H


#import <Foundation/Foundation.h>


@interface VNGFileSizeTracker : NSObject



-(id)init;
-(void)accumulateDownloadFileSize:(NSUInteger)arg0 ;
-(void)resetTotalFileSize;
-(NSUInteger)getTotalFileSize;
-(void)logTotalFileSizeToLogger;
+(id)sharedInstance;


@end


#endif