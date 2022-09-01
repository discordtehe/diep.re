// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef CALLBACKDELEGATE_H
#define CALLBACKDELEGATE_H


#import <Foundation/Foundation.h>

@class Callback;
@protocol BufferedTasksSchedulerProtocol;

@interface CallbackDelegate : NSObject <BufferedTasksSchedulerProtocol>

 {
    Callback *mCallback;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithCallback:(id)arg0 ;
-(void)dealloc;
-(void)execute;


@end


#endif