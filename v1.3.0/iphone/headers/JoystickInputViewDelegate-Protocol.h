// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0



@protocol JoystickInputViewDelegate


-(void)onSetEnabled:(BOOL)arg0 ;
-(void)onDesiredAxisChanged:(struct CGPoint )arg0 ;
-(void)onPositionChanged:(struct CGPoint )arg0 ;
-(void)onCleanup;

@optional
-(void)setDeadZoneSize:(float)arg0 ;
@end

