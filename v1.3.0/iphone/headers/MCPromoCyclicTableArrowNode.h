// Headers generated with ktool v1.3.0
// https://github.com/cxnder/ktool | pip3 install k2l
// Platform: IOS | Minimum OS: 8.0.0 | SDK: 0.0.0


#ifndef MCPROMOCYCLICTABLEARROWNODE_H
#define MCPROMOCYCLICTABLEARROWNODE_H



@class CCNode;
@class MCPromoCyclicTableArrowViewNode;

@interface MCPromoCyclicTableArrowNode : CCNode {
    MCPromoCyclicTableArrowViewNode *_view;
}




-(id)initWithAnimationFile:(id)arg0 flipHorizontally:(BOOL)arg1 loop:(BOOL)arg2 spineNodeAnchorPoint:(struct CGPoint )arg3 animationModel:(id)arg4 finishedAnimationNotificationName:(id)arg5 ;
-(void)pressed;
-(void)stopAnimations;
-(void)dealloc;
+(id)nodeWithAnimationFile:(id)arg0 flipHorizontally:(BOOL)arg1 animationModel:(id)arg2 finishedAnimationNotificationName:(id)arg3 ;
+(id)nodeWithAnimationFile:(id)arg0 flipHorizontally:(BOOL)arg1 animationModel:(id)arg2 ;
+(id)nodeWithAnimationFile:(id)arg0 flipHorizontally:(BOOL)arg1 spineNodeAnchorPoint:(struct CGPoint )arg2 animationModel:(id)arg3 finishedAnimationNotificationName:(id)arg4 ;
+(id)nodeWithAnimationFile:(id)arg0 flipHorizontally:(BOOL)arg1 spineNodeAnchorPoint:(struct CGPoint )arg2 animationModel:(id)arg3 ;
+(id)nodeWithAnimationFileInLoop:(id)arg0 flipHorizontally:(BOOL)arg1 spineNodeAnchorPoint:(struct CGPoint )arg2 animationModel:(id)arg3 finishedAnimationNotificationName:(id)arg4 ;
+(id)nodeWithAnimationFileInLoop:(id)arg0 flipHorizontally:(BOOL)arg1 spineNodeAnchorPoint:(struct CGPoint )arg2 animationModel:(id)arg3 ;
+(id)nodeWithAnimationFileInLoop:(id)arg0 flipHorizontally:(BOOL)arg1 animationModel:(id)arg2 ;
+(id)nodeWithAnimationFileInLoop:(id)arg0 flipHorizontally:(BOOL)arg1 animationModel:(id)arg2 finishedAnimationNotificationName:(id)arg3 ;


@end


#endif