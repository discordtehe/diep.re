// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef USERSETTINGS_H
#define USERSETTINGS_H


#import <Foundation/Foundation.h>


@interface UserSettings : NSObject

@property (nonatomic) BOOL stopOnRelease; // ivar: _stopOnRelease
@property (nonatomic) BOOL shootJoystickOnRight; // ivar: _shootJoystickOnRight
@property (nonatomic) BOOL fixedJoysticks; // ivar: _fixedJoysticks
@property (nonatomic) BOOL shootOnRelease; // ivar: _shootOnRelease
@property (nonatomic) BOOL directionOnTouch; // ivar: _directionOnTouch
@property (nonatomic) int showTutorial; // ivar: _showTutorial
@property (nonatomic) BOOL drawDeadZones; // ivar: _drawDeadZones
@property (nonatomic) BOOL showArrow; // ivar: _showArrow
@property (nonatomic) BOOL showMinimap; // ivar: _showMinimap


-(id)init;
-(void)dealloc;
-(id)getSettingsName:(int)arg0 ;
-(void)readFromDisk;
-(void)writeToDisk;
+(id)userSettings;


@end


#endif