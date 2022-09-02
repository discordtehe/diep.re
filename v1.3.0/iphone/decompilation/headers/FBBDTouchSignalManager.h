// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef FBBDTOUCHSIGNALMANAGER_H
#define FBBDTOUCHSIGNALMANAGER_H


#import <Foundation/Foundation.h>

@class FBBDTapGestureRecognizer;
@class FBBotDetectionCircularBuffer;
@protocol FBBDTapGestureRecognizerDelegate;
@protocol BotDetectionConfigProviderDelegate;

@interface FBBDTouchSignalManager : NSObject <FBBDTapGestureRecognizerDelegate>

 {
    FBBDTapGestureRecognizer *_bdTapGestureRecognizer;
    FBBotDetectionCircularBuffer *_circularBuffer;
    int _touchSignalFlags;
    id<BotDetectionConfigProviderDelegate> *_configDelegate;
}


@property (readonly) NSUInteger hash;
@property (readonly) Class superclass;
@property (readonly, copy) NSString *description;
@property (readonly, copy) NSString *debugDescription;


-(id)initWithConfigDelegate:(id)arg0 withTouchSignalFlags:(int)arg1 ;
-(id)touchSignalsArray;
-(void)touchOccuredWithTouches:(id)arg0 withEvent:(id)arg1 ;


@end


#endif