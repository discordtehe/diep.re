// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef OMIDTAPJOYADSESSION_H
#define OMIDTAPJOYADSESSION_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class OMIDtapjoyAdSessionContext;
@class OMIDtapjoyEventFilter;
@class OMIDtapjoyBridge;
@class OMIDtapjoyAdSessionStatePublisher;
@class OMIDtapjoyAdSessionConfiguration;
@protocol OMIDtapjoyAdSessionDelegate;

@interface OMIDtapjoyAdSession : NSObject {
    NSPointerArray *_friendlyObstructions;
    UIView *_mainAdView;
    OMIDtapjoyAdSessionContext *_context;
}


@property (readonly, nonatomic) NSString *identifier; // ivar: _identifier
@property (readonly, nonatomic) NSArray *friendlyObstructions;
@property (readonly, nonatomic) OMIDtapjoyEventFilter *eventFilter; // ivar: _eventFilter
@property (readonly, nonatomic) OMIDtapjoyBridge *bridge; // ivar: _bridge
@property (readonly, nonatomic) OMIDtapjoyAdSessionStatePublisher *statePublisher; // ivar: _statePublisher
@property (weak, nonatomic) NSObject<OMIDtapjoyAdSessionDelegate> *delegate; // ivar: _delegate
@property (nonatomic) BOOL lastPublishedViewStateWasPopulated; // ivar: _lastPublishedViewStateWasPopulated
@property (readonly, nonatomic) OMIDtapjoyAdSessionConfiguration *configuration; // ivar: _configuration
@property (weak, nonatomic) UIView *mainAdView;


-(id)initWithConfiguration:(id)arg0 adSessionContext:(id)arg1 error:(*id)arg2 ;
-(void)addToRegistry;
-(id)adEventsPublisher;
-(id)videoEventsPublisher;
-(void)start;
-(void)onStart;
-(void)finish;
-(void)onFinish;
-(void)addFriendlyObstruction:(id)arg0 ;
-(void)internal_addFriendlyObstruction:(id)arg0 ;
-(void)removeFriendlyObstruction:(id)arg0 ;
-(void)internal_removeFriendlyObstruction:(id)arg0 ;
-(void)removeAllFriendlyObstructions;
-(void)internal_removeAllFriendlyObstructions;
-(void)logErrorWithType:(NSUInteger)arg0 message:(id)arg1 ;
-(void)setDeviceVolume;
-(CGFloat)deviceVolume;


@end


#endif