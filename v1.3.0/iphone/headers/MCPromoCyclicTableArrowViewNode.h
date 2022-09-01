// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOCYCLICTABLEARROWVIEWNODE_H
#define MCPROMOCYCLICTABLEARROWVIEWNODE_H


#import <Foundation/Foundation.h>

@class MCSpineNode;
@class MCPromoCyclicTableArrowAnimationModel;

@interface MCPromoCyclicTableArrowViewNode : MCSpineNode {
    MCPromoCyclicTableArrowAnimationModel *_animationModel;
    NSString *_finishedAnimationNotificationName;
}




-(id)initWithAnimationFile:(id)arg0 loop:(BOOL)arg1 animationModel:(id)arg2 finishedAnimationNotificationName:(id)arg3 ;
-(void)stopAnimation;
-(void)setSpineAnimationInNodeAnimationName:(id)arg0 toTrack:(int)arg1 onLoop:(BOOL)arg2 ;
-(void)update:(CGFloat)arg0 ;
-(void)pressed;
-(void)animationFinished:(id)arg0 ;
-(void)postNotificationAnimationFinished;
-(void)dealloc;
+(id)nodeWithAnimationFile:(id)arg0 animationModel:(id)arg1 finishedAnimationNotificationName:(id)arg2 ;
+(id)nodeWithAnimationFileInLoop:(id)arg0 animationModel:(id)arg1 finishedAnimationNotificationName:(id)arg2 ;


@end


#endif