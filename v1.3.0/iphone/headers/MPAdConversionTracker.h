// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MPADCONVERSIONTRACKER_H
#define MPADCONVERSIONTRACKER_H

@class NSURLSessionTask;

#import <Foundation/Foundation.h>


@interface MPAdConversionTracker : NSObject

@property (retain, nonatomic) NSURLSessionTask *task; // ivar: _task


-(void)reportApplicationOpenForApplicationID:(id)arg0 ;
+(id)sharedConversionTracker;


@end


#endif