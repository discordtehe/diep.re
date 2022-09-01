// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef ISORIENTATIONDATA_H
#define ISORIENTATIONDATA_H


#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>


@interface ISOrientationData : NSObject

@property (nonatomic) NSInteger currentDeviceOrientation; // ivar: _currentDeviceOrientation
@property (retain, nonatomic) NSArray *plistOrientation; // ivar: _plistOrientation
@property (nonatomic) NSUInteger windowOrientation; // ivar: _windowOrientation
@property (nonatomic) NSUInteger topMostViewControllerOrientation; // ivar: _topMostViewControllerOrientation
@property (nonatomic) BOOL topMostViewControllerShouldAutorotate; // ivar: _topMostViewControllerShouldAutorotate
@property (nonatomic) NSInteger preferredInterfaceOrientationForPresentation; // ivar: _preferredInterfaceOrientationForPresentation
@property (nonatomic) NSInteger statusBarOrientation; // ivar: _statusBarOrientation
@property (nonatomic) BOOL isWindowOrientationOverrided; // ivar: _isWindowOrientationOverrided


-(id)dictionaryRepresentation;


@end


#endif