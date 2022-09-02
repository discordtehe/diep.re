// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISORIENTATIONMANAGER_H
#define ISORIENTATIONMANAGER_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>

@class ISOrientationPolicy;

@interface ISOrientationManager : NSObject {
    int recentOrientations;
}


@property (retain, nonatomic) NSMutableArray *viewsArray; // ivar: _viewsArray
@property (readonly, nonatomic) NSInteger currentDeviceOrientation; // ivar: _currentDeviceOrientation
@property (readonly, nonatomic) ISOrientationPolicy *orientationPolicy; // ivar: _orientationPolicy


-(id)init;
-(void)dealloc;
-(void)ironSourceOnChangedDeviceOrientation:(id)arg0 ;
-(int)preferredOrientation:(int)arg0 ;
-(void)updateOrientationPolicy:(id)arg0 ;
-(void)updateViewsOrientation;
-(void)insertView:(id)arg0 ;
-(void)removeView:(id)arg0 ;
-(void)removeViews;
+(id)sharedManager;


@end


#endif