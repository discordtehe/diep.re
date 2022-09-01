// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ADCADSESSION_H
#define ADCADSESSION_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>
#import <UIKit/UIKit.h>

@class ADCModule;
@class ADCContainer;
@class AdColonyAdOptions;
@class ADCViewabilityMonitor;

@interface ADCAdSession : NSObject {
    NSMutableDictionary *_boundObjects;
}


@property (retain, nonatomic) NSString *identifier; // ivar: _identifier
@property (readonly, nonatomic) NSString *adID;
@property (readonly, nonatomic) NSNumber *creativeID;
@property (retain, nonatomic) NSString *zoneID; // ivar: _zoneID
@property (nonatomic) NSUInteger requestType; // ivar: _requestType
@property (retain, nonatomic) UIViewController *appViewController; // ivar: _appViewController
@property (retain, nonatomic) ADCModule *fullscreenModule; // ivar: _fullscreenModule
@property (retain, nonatomic) ADCModule *nativeModule; // ivar: _nativeModule
@property (retain, nonatomic) ADCContainer *fullscreenContainer; // ivar: _fullscreenContainer
@property (retain, nonatomic) ADCContainer *customizableContainer; // ivar: _customizableContainer
@property (nonatomic) NSUInteger status; // ivar: _status
@property (retain, nonatomic) AdColonyAdOptions *options; // ivar: _options
@property (nonatomic) BOOL active; // ivar: _active
@property (retain, nonatomic) ADCViewabilityMonitor *viewabilityMonitor; // ivar: _viewabilityMonitor
@property (nonatomic) BOOL shouldPollViewability; // ivar: _shouldPollViewability
@property (retain, nonatomic) NSDate *lastViewabilityUpdate; // ivar: _lastViewabilityUpdate
@property (nonatomic) BOOL isAudioPlaying; // ivar: _isAudioPlaying
@property BOOL alteredStatusBarVisibility; // ivar: _alteredStatusBarVisibility


-(id)init;
-(void)pollViewability;
-(BOOL)bindObject:(id)arg0 withIdentifier:(NSUInteger)arg1 ;
-(BOOL)unbindObjectWithIdentifier:(NSUInteger)arg0 ;
-(id)objectForIdentifier:(NSUInteger)arg0 ;
-(void)dealloc;


@end


#endif