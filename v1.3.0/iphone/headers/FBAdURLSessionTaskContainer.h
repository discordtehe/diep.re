// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBADURLSESSIONTASKCONTAINER_H
#define FBADURLSESSIONTASKCONTAINER_H

@class NSURLSessionTask;

#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface FBAdURLSessionTaskContainer : NSObject

@property (retain, nonatomic) NSURLSessionTask *task; // ivar: _task
@property (readonly) NSInteger state;
@property (retain, nonatomic) NSDate *requestStart; // ivar: _requestStart


-(id)init;
-(void)cancel;


@end


#endif