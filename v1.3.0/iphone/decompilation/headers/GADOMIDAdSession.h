// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef GADOMIDADSESSION_H
#define GADOMIDADSESSION_H


#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreFoundation/CoreFoundation.h>

@class GADOMIDAdSessionContext;
@class GADOMIDEventFilter;
@class GADOMIDBridge;
@class GADOMIDAdSessionStatePublisher;
@class GADOMIDAdSessionConfiguration;
@protocol GADOMIDAdEventsPublisher;
@protocol GADOMIDVideoEventsPublisher;
@protocol GADOMIDAdSessionDelegate;

@interface GADOMIDAdSession : NSObject {
    NSPointerArray *_friendlyObstructions;
    UIView *_mainAdView;
    GADOMIDAdSessionContext *_context;
}


@property (readonly, nonatomic) NSString *identifier; // ivar: _identifier
@property (readonly, nonatomic) NSArray *friendlyObstructions;
@property (readonly, nonatomic) GADOMIDEventFilter *eventFilter; // ivar: _eventFilter
@property (readonly, nonatomic) NSObject<GADOMIDAdEventsPublisher> *adEventsPublisher;
@property (readonly, nonatomic) NSObject<GADOMIDVideoEventsPublisher> *videoEventsPublisher;
@property (readonly, nonatomic) GADOMIDBridge *bridge; // ivar: _bridge
@property (readonly, nonatomic) GADOMIDAdSessionStatePublisher *statePublisher; // ivar: _statePublisher
@property (weak, nonatomic) NSObject<GADOMIDAdSessionDelegate> *delegate; // ivar: _delegate
@property (nonatomic) BOOL lastPublishedViewStateWasPopulated; // ivar: _lastPublishedViewStateWasPopulated
@property (readonly, nonatomic) GADOMIDAdSessionConfiguration *configuration; // ivar: _configuration
@property (weak, nonatomic) UIView *mainAdView;


-(id)initWithConfiguration:(id)arg0 adSessionContext:(id)arg1 error:(*id)arg2 ;
-(void)addToRegistry;
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